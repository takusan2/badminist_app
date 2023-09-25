import 'dart:async';

import 'package:badminist_app/services/dio_service.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_data_source.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_key.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

final homeNotifierProvider =
    AsyncNotifierProvider<HomeNotifier, List<CommunityReadModel>?>(
  HomeNotifier.new,
);

class HomeNotifier extends AsyncNotifier<List<CommunityReadModel>?> {
  HomeNotifier();

  SecureStorageRepository get secureStorageRepository =>
      ref.read(secureStorageRepositoryProvider);

  @override
  FutureOr<List<CommunityReadModel>?> build() async {
    return await _fetchCommunities();
  }

  CommunitiesApi get communitiesApi =>
      ref.watch(openApiProvider).getCommunitiesApi();

  Future<List<CommunityReadModel>?> _fetchCommunities() async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      final response = await communitiesApi.communitiesGet(
        headers: {'Authorization': 'Bearer $token'},
      );
      return response.data?.asList();
    } on Exception catch (e) {
      debugPrint('fetchCommunities: ${e.toString()}');
      return null;
    }
  }

  Future<void> fetchCommunities() async {
    state =
        const AsyncLoading<List<CommunityReadModel>?>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async => await _fetchCommunities(),
    );
  }

  Future<void> _createCommunity(CreateCommunityRequestBody requestBody) async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      await communitiesApi.communitiesCreateCommunityPost(
        createCommunityRequestBody: requestBody,
        headers: {'Authorization': 'Bearer $token'},
      );
    } on Exception catch (e) {
      debugPrint('createCommunity: ${e.toString()}');
    }
  }

  Future<void> createCommunity({
    required String name,
    required String description,
  }) async {
    await _createCommunity(
      CreateCommunityRequestBody(
        (b) => b
          ..name = name
          ..description = description,
      ),
    );
    await fetchCommunities();
  }

  Future<void> _deleteCommunity({
    required DeleteCommunityRequestBody requestBody,
  }) async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      await communitiesApi.communitiesDeleteCommunityPost(
        deleteCommunityRequestBody: requestBody,
        headers: {'Authorization': 'Bearer $token'},
      );
    } on DioException catch (e) {
      debugPrint('deleteCommunity: ${e.response?.data.toString()}');
    } on Exception catch (e) {
      debugPrint('deleteCommunity: ${e.toString()}');
    }
  }

  Future<void> deleteCommunity(String communityId) async {
    await _deleteCommunity(
      requestBody: DeleteCommunityRequestBody(
        (b) => b..communityId = communityId,
      ),
    );
    await fetchCommunities();
  }
}
