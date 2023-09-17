//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CommunitiesApi {
  CommunitiesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// コミュニティにメンバーを追加
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  ///
  /// * [AddMember] addMember:
  Future<Response> communitiesAddMemberPostWithHttpInfo(String communityId, { AddMember? addMember, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/add-member'
      .replaceAll('{community-id}', communityId);

    // ignore: prefer_final_locals
    Object? postBody = addMember;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コミュニティにメンバーを追加
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  ///
  /// * [AddMember] addMember:
  Future<Success?> communitiesAddMemberPost(String communityId, { AddMember? addMember, }) async {
    final response = await communitiesAddMemberPostWithHttpInfo(communityId,  addMember: addMember, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// コミュニティにプレイヤーを追加
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddPlayer] addPlayer:
  Future<Response> communitiesAddPlayerPostWithHttpInfo({ AddPlayer? addPlayer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/add-player';

    // ignore: prefer_final_locals
    Object? postBody = addPlayer;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コミュニティにプレイヤーを追加
  ///
  /// Parameters:
  ///
  /// * [AddPlayer] addPlayer:
  Future<Success?> communitiesAddPlayerPost({ AddPlayer? addPlayer, }) async {
    final response = await communitiesAddPlayerPostWithHttpInfo( addPlayer: addPlayer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// メンバーの権限を変更
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  ///
  /// * [ChangeMemberRole] changeMemberRole:
  Future<Response> communitiesChangeMemberRolePutWithHttpInfo(String communityId, { ChangeMemberRole? changeMemberRole, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/change-member-role'
      .replaceAll('{community-id}', communityId);

    // ignore: prefer_final_locals
    Object? postBody = changeMemberRole;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// メンバーの権限を変更
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  ///
  /// * [ChangeMemberRole] changeMemberRole:
  Future<Success?> communitiesChangeMemberRolePut(String communityId, { ChangeMemberRole? changeMemberRole, }) async {
    final response = await communitiesChangeMemberRolePutWithHttpInfo(communityId,  changeMemberRole: changeMemberRole, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// プレイヤーの試合数を変更
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ChangePlayerNumGames] changePlayerNumGames:
  Future<Response> communitiesChangePlayerNumGamesPutWithHttpInfo({ ChangePlayerNumGames? changePlayerNumGames, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/change-player-num-games';

    // ignore: prefer_final_locals
    Object? postBody = changePlayerNumGames;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// プレイヤーの試合数を変更
  ///
  /// Parameters:
  ///
  /// * [ChangePlayerNumGames] changePlayerNumGames:
  Future<Success?> communitiesChangePlayerNumGamesPut({ ChangePlayerNumGames? changePlayerNumGames, }) async {
    final response = await communitiesChangePlayerNumGamesPutWithHttpInfo( changePlayerNumGames: changePlayerNumGames, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// プレイヤーのプロパティを変更
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ChangePlayerProperty] changePlayerProperty:
  Future<Response> communitiesChangePlayerPropertyPutWithHttpInfo({ ChangePlayerProperty? changePlayerProperty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/change-player-property';

    // ignore: prefer_final_locals
    Object? postBody = changePlayerProperty;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// プレイヤーのプロパティを変更
  ///
  /// Parameters:
  ///
  /// * [ChangePlayerProperty] changePlayerProperty:
  Future<Success?> communitiesChangePlayerPropertyPut({ ChangePlayerProperty? changePlayerProperty, }) async {
    final response = await communitiesChangePlayerPropertyPutWithHttpInfo( changePlayerProperty: changePlayerProperty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// マッチの生成
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  ///
  /// * [int] numCourt (required):
  ///
  /// * [Rule] rule (required):
  Future<Response> communitiesCommunityIdGenerateMatchesGetWithHttpInfo(String communityId, int numCourt, Rule rule,) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/{community-id}/generate-matches'
      .replaceAll('{community-id}', communityId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'num-court', numCourt));
      queryParams.addAll(_queryParams('', 'rule', rule));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// マッチの生成
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  ///
  /// * [int] numCourt (required):
  ///
  /// * [Rule] rule (required):
  Future<MatchCombination?> communitiesCommunityIdGenerateMatchesGet(String communityId, int numCourt, Rule rule,) async {
    final response = await communitiesCommunityIdGenerateMatchesGetWithHttpInfo(communityId, numCourt, rule,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MatchCombination',) as MatchCombination;
    
    }
    return null;
  }

  /// コミュニティ一覧の取得
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  Future<Response> communitiesCommunityIdGetWithHttpInfo(String communityId,) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/{community-id}'
      .replaceAll('{community-id}', communityId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コミュニティ一覧の取得
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  Future<CommunityList?> communitiesCommunityIdGet(String communityId,) async {
    final response = await communitiesCommunityIdGetWithHttpInfo(communityId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommunityList',) as CommunityList;
    
    }
    return null;
  }

  /// メンバー一覧の取得
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  Future<Response> communitiesCommunityIdMembersGetWithHttpInfo(String communityId,) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/{community-id}/members'
      .replaceAll('{community-id}', communityId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// メンバー一覧の取得
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  Future<MemberList?> communitiesCommunityIdMembersGet(String communityId,) async {
    final response = await communitiesCommunityIdMembersGetWithHttpInfo(communityId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MemberList',) as MemberList;
    
    }
    return null;
  }

  /// プレイヤー一覧の取得
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  Future<Response> communitiesCommunityIdPlayersGetWithHttpInfo(String communityId,) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/{community-id}/players'
      .replaceAll('{community-id}', communityId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// プレイヤー一覧の取得
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  Future<PlayerList?> communitiesCommunityIdPlayersGet(String communityId,) async {
    final response = await communitiesCommunityIdPlayersGetWithHttpInfo(communityId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlayerList',) as PlayerList;
    
    }
    return null;
  }

  /// コミュニティの作成
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateCommunity] createCommunity:
  Future<Response> communitiesCreateCommunityPostWithHttpInfo({ CreateCommunity? createCommunity, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/create-community';

    // ignore: prefer_final_locals
    Object? postBody = createCommunity;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コミュニティの作成
  ///
  /// Parameters:
  ///
  /// * [CreateCommunity] createCommunity:
  Future<Success?> communitiesCreateCommunityPost({ CreateCommunity? createCommunity, }) async {
    final response = await communitiesCreateCommunityPostWithHttpInfo( createCommunity: createCommunity, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// コミュニティの削除
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteCommunity] deleteCommunity:
  Future<Response> communitiesDeleteCommunityPostWithHttpInfo({ DeleteCommunity? deleteCommunity, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/delete-community';

    // ignore: prefer_final_locals
    Object? postBody = deleteCommunity;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コミュニティの削除
  ///
  /// Parameters:
  ///
  /// * [DeleteCommunity] deleteCommunity:
  Future<Success?> communitiesDeleteCommunityPost({ DeleteCommunity? deleteCommunity, }) async {
    final response = await communitiesDeleteCommunityPostWithHttpInfo( deleteCommunity: deleteCommunity, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// コミュニティの説明文の変更
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EditCommunityDescription] editCommunityDescription:
  Future<Response> communitiesEditCommunityDescriptionPutWithHttpInfo({ EditCommunityDescription? editCommunityDescription, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/edit-community-description';

    // ignore: prefer_final_locals
    Object? postBody = editCommunityDescription;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コミュニティの説明文の変更
  ///
  /// Parameters:
  ///
  /// * [EditCommunityDescription] editCommunityDescription:
  Future<Success?> communitiesEditCommunityDescriptionPut({ EditCommunityDescription? editCommunityDescription, }) async {
    final response = await communitiesEditCommunityDescriptionPutWithHttpInfo( editCommunityDescription: editCommunityDescription, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// コミュニティからメンバーを削除
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  ///
  /// * [RemoveMember] removeMember:
  Future<Response> communitiesRemoveMemberPostWithHttpInfo(String communityId, { RemoveMember? removeMember, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/remove-member'
      .replaceAll('{community-id}', communityId);

    // ignore: prefer_final_locals
    Object? postBody = removeMember;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コミュニティからメンバーを削除
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  ///
  /// * [RemoveMember] removeMember:
  Future<Success?> communitiesRemoveMemberPost(String communityId, { RemoveMember? removeMember, }) async {
    final response = await communitiesRemoveMemberPostWithHttpInfo(communityId,  removeMember: removeMember, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// コミュニティからプレイヤーを削除
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RemovePlayer] removePlayer:
  Future<Response> communitiesRemovePlayerPostWithHttpInfo({ RemovePlayer? removePlayer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/remove-player';

    // ignore: prefer_final_locals
    Object? postBody = removePlayer;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コミュニティからプレイヤーを削除
  ///
  /// Parameters:
  ///
  /// * [RemovePlayer] removePlayer:
  Future<Success?> communitiesRemovePlayerPost({ RemovePlayer? removePlayer, }) async {
    final response = await communitiesRemovePlayerPostWithHttpInfo( removePlayer: removePlayer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// コミュニティ名の変更
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RenameCommunity] renameCommunity:
  Future<Response> communitiesRenameCommunityPutWithHttpInfo({ RenameCommunity? renameCommunity, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/rename-community';

    // ignore: prefer_final_locals
    Object? postBody = renameCommunity;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コミュニティ名の変更
  ///
  /// Parameters:
  ///
  /// * [RenameCommunity] renameCommunity:
  Future<Success?> communitiesRenameCommunityPut({ RenameCommunity? renameCommunity, }) async {
    final response = await communitiesRenameCommunityPutWithHttpInfo( renameCommunity: renameCommunity, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }

  /// プレイヤーの試合数をリセット
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ResetPlayerNumGames] resetPlayerNumGames:
  Future<Response> communitiesResetPlayerNumGamesPutWithHttpInfo({ ResetPlayerNumGames? resetPlayerNumGames, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/reset-player-num-games';

    // ignore: prefer_final_locals
    Object? postBody = resetPlayerNumGames;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// プレイヤーの試合数をリセット
  ///
  /// Parameters:
  ///
  /// * [ResetPlayerNumGames] resetPlayerNumGames:
  Future<Success?> communitiesResetPlayerNumGamesPut({ ResetPlayerNumGames? resetPlayerNumGames, }) async {
    final response = await communitiesResetPlayerNumGamesPutWithHttpInfo( resetPlayerNumGames: resetPlayerNumGames, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Success',) as Success;
    
    }
    return null;
  }
}
