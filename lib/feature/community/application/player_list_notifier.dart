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

final playerListNotifierProvider =
    AsyncNotifierProvider<PlayerListNotifier, List<PlayerReadModel>?>(
  PlayerListNotifier.new,
);

class PlayerListNotifier extends AsyncNotifier<List<PlayerReadModel>?> {
  PlayerListNotifier();

  CommunitiesApi get communitiesApi =>
      ref.watch(openApiProvider).getCommunitiesApi();
  SecureStorageRepository get secureStorageRepository =>
      ref.read(secureStorageRepositoryProvider);
  HomePageState get homePageState => ref.watch(homePageStateProvider);

  @override
  FutureOr<List<PlayerReadModel>?> build() async {
    return await _fetchPlayers(homePageState.selectedCommunity ?? '');
  }

  Future<List<PlayerReadModel>?> _fetchPlayers(String communityId) async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      final response = await communitiesApi.communitiesCommunityIdPlayersGet(
        communityId: communityId,
        headers: {'Authorization': 'Bearer $token'},
      );
      return response.data?.asList();
    } on Exception catch (e) {
      debugPrint('fetchPlayers: ${e.toString()}');
      return null;
    }
  }

  Future<void> fetchPlayers(String communityId) async {
    state =
        const AsyncLoading<List<PlayerReadModel>?>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async => await _fetchPlayers(communityId),
    );
  }

  Future<void> _addPlayer(AddPlayerRequestBody requestBody) async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      await communitiesApi.communitiesAddPlayerPost(
        addPlayerRequestBody: requestBody,
        headers: {'Authorization': 'Bearer $token'},
      );
    } on DioException catch (e) {
      throw ApiException(e.response?.data.toString());
    } on Exception catch (e) {
      debugPrint('addPlayer: ${e.toString()}');
    }
  }

  Future<void> addPlayer({
    required String name,
    required PlayerGender gender,
    required int age,
    required PlayerLevel level,
    required int numGames,
    required PlayerStatus status,
  }) async {
    await _addPlayer(AddPlayerRequestBody(
      (b) => b
        ..communityId = homePageState.selectedCommunity
        ..name = name
        ..gender = gender
        ..age = age
        ..level = level
        ..numGames = numGames
        ..status = status,
    ));
    state =
        const AsyncLoading<List<PlayerReadModel>?>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async => await _fetchPlayers(homePageState.selectedCommunity ?? ''),
    );
  }

  Future<void> _changePlayerProperty(
    ChangePlayerPropertyRequestBody requestBody,
  ) async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      await communitiesApi.communitiesChangePlayerPropertyPut(
        changePlayerPropertyRequestBody: requestBody,
        headers: {'Authorization': 'Bearer $token'},
      );
    } on DioException catch (e) {
      throw ApiException(e.response?.data.toString());
    } on Exception catch (e) {
      debugPrint('ChangePlayerStatus: ${e.toString()}');
    }
  }

  Future<void> changePlayerProperty({
    required String playerId,
    required PlayerStatus status,
    required int numGames,
    required int age,
    required PlayerLevel level,
    required String name,
    required PlayerGender gender,
  }) async {
    final requestBody = ChangePlayerPropertyRequestBody(
      (b) => b
        ..communityId = homePageState.selectedCommunity
        ..playerId = playerId
        ..numGames = numGames
        ..age = age
        ..level = level
        ..status = status
        ..name = name
        ..gender = gender,
    );
    await _changePlayerProperty(requestBody);

    state =
        const AsyncLoading<List<PlayerReadModel>?>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async => await _fetchPlayers(homePageState.selectedCommunity ?? ''),
    );
  }

  Future<void> deletePlayer(String playerId) async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      await communitiesApi.communitiesRemovePlayerPost(
        removePlayerRequestBody: RemovePlayerRequestBody(
          (b) => b
            ..communityId = homePageState.selectedCommunity
            ..playerId = playerId,
        ),
        headers: {'Authorization': 'Bearer $token'},
      );
    } on DioException catch (e) {
      throw ApiException(e.response?.data.toString());
    } on Exception catch (e) {
      debugPrint('deletePlayer: ${e.toString()}');
    }
    state =
        const AsyncLoading<List<PlayerReadModel>?>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async => await _fetchPlayers(homePageState.selectedCommunity ?? ''),
    );
  }
}
