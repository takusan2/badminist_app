import 'dart:async';

import 'package:badminist_app/services/dio_service.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_data_source.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_key.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

final homeNotifierProvider =
    AsyncNotifierProvider<HomeNotifierProvider, List<CommunityReadModel>?>(
  HomeNotifierProvider.new,
);

class HomeNotifierProvider extends AsyncNotifier<List<CommunityReadModel>?> {
  HomeNotifierProvider();

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
}
