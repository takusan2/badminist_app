import 'dart:async';

import 'package:badminist_app/services/dio_service.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_data_source.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_key.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_repository.dart';
import 'package:badminist_app/utils/exception/api_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

final matchProvider = AsyncNotifierProvider<MatchNotifier, MatchCombination?>(
  MatchNotifier.new,
);

class MatchNotifier extends AsyncNotifier<MatchCombination?> {
  MatchNotifier();

  CommunitiesApi get communitiesApi =>
      ref.watch(openApiProvider).getCommunitiesApi();
  SecureStorageRepository get secureStorageRepository =>
      ref.read(secureStorageRepositoryProvider);

  @override
  FutureOr<MatchCombination?> build() {
    return null;
  }

  Future<MatchCombination?> _fetchMatch(
    String communityId,
    int numCourt,
    Rule rule,
  ) async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      final response =
          await communitiesApi.communitiesCommunityIdGenerateMatchesGet(
        communityId: communityId,
        numCourt: numCourt,
        rule: rule,
        headers: {'Authorization': 'Bearer $token'},
      );
      return response.data;
    } on DioException catch (e) {
      throw ApiException(e.response?.data['message'] ?? e.message);
    } on Exception catch (e) {
      debugPrint('fetchMatch: ${e.toString()}');
      return null;
    }
  }

  Future<void> fetchMatch(
    String communityId,
    int numCourt,
    Rule rule,
  ) async {
    state = const AsyncLoading<MatchCombination?>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async => await _fetchMatch(communityId, numCourt, rule),
    );
  }
}
