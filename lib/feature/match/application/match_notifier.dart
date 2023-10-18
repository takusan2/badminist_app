import 'dart:async';

import 'package:badminist_app/feature/home/presentation/pages/home/home_page_state.dart';
import 'package:badminist_app/services/dio_service.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_data_source.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_key.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_repository.dart';
import 'package:badminist_app/utils/exception/api_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

final matchNotifierProvider =
    AsyncNotifierProvider<MatchNotifier, MatchCombination?>(
  MatchNotifier.new,
);

class MatchNotifier extends AsyncNotifier<MatchCombination?> {
  MatchNotifier();

  CommunitiesApi get communitiesApi =>
      ref.watch(openApiProvider).getCommunitiesApi();
  SecureStorageRepository get secureStorageRepository =>
      ref.read(secureStorageRepositoryProvider);
  HomePageState get homePageState => ref.watch(homePageStateProvider);

  @override
  FutureOr<MatchCombination?> build() {
    return null;
  }

  Future<MatchCombination?> _fetchMatch(
    int numCourt,
    Rule rule,
  ) async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      final response =
          await communitiesApi.communitiesCommunityIdGenerateMatchesGet(
        communityId: homePageState.selectedCommunity ?? '',
        numCourt: numCourt,
        rule: rule,
        headers: {'Authorization': 'Bearer $token'},
      );
      debugPrint('fetchMatch data: ${response.data}');
      return response.data;
    } on DioException catch (e) {
      throw ApiException(e.response?.data.toString());
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> fetchMatch(
    int numCourt,
    Rule rule,
  ) async {
    state = const AsyncLoading<MatchCombination?>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async => await _fetchMatch(numCourt, rule),
    );
  }
}
