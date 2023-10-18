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
  /// * [AddMemberRequestBody] addMemberRequestBody:
  Future<Response> communitiesAddMemberPostWithHttpInfo({ AddMemberRequestBody? addMemberRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/add-member';

    // ignore: prefer_final_locals
    Object? postBody = addMemberRequestBody;

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
  /// * [AddMemberRequestBody] addMemberRequestBody:
  Future<Success?> communitiesAddMemberPost({ AddMemberRequestBody? addMemberRequestBody, }) async {
    final response = await communitiesAddMemberPostWithHttpInfo( addMemberRequestBody: addMemberRequestBody, );
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
  /// * [AddPlayerRequestBody] addPlayerRequestBody:
  Future<Response> communitiesAddPlayerPostWithHttpInfo({ AddPlayerRequestBody? addPlayerRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/add-player';

    // ignore: prefer_final_locals
    Object? postBody = addPlayerRequestBody;

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
  /// * [AddPlayerRequestBody] addPlayerRequestBody:
  Future<Success?> communitiesAddPlayerPost({ AddPlayerRequestBody? addPlayerRequestBody, }) async {
    final response = await communitiesAddPlayerPostWithHttpInfo( addPlayerRequestBody: addPlayerRequestBody, );
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
  /// * [ChangeMemberRoleRequestBody] changeMemberRoleRequestBody:
  Future<Response> communitiesChangeMemberRolePutWithHttpInfo({ ChangeMemberRoleRequestBody? changeMemberRoleRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/change-member-role';

    // ignore: prefer_final_locals
    Object? postBody = changeMemberRoleRequestBody;

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
  /// * [ChangeMemberRoleRequestBody] changeMemberRoleRequestBody:
  Future<Success?> communitiesChangeMemberRolePut({ ChangeMemberRoleRequestBody? changeMemberRoleRequestBody, }) async {
    final response = await communitiesChangeMemberRolePutWithHttpInfo( changeMemberRoleRequestBody: changeMemberRoleRequestBody, );
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
  /// * [ChangePlayerNumGamesRequestBody] changePlayerNumGamesRequestBody:
  Future<Response> communitiesChangePlayerNumGamesPutWithHttpInfo({ ChangePlayerNumGamesRequestBody? changePlayerNumGamesRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/change-player-num-games';

    // ignore: prefer_final_locals
    Object? postBody = changePlayerNumGamesRequestBody;

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
  /// * [ChangePlayerNumGamesRequestBody] changePlayerNumGamesRequestBody:
  Future<Success?> communitiesChangePlayerNumGamesPut({ ChangePlayerNumGamesRequestBody? changePlayerNumGamesRequestBody, }) async {
    final response = await communitiesChangePlayerNumGamesPutWithHttpInfo( changePlayerNumGamesRequestBody: changePlayerNumGamesRequestBody, );
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
  /// * [ChangePlayerPropertyRequestBody] changePlayerPropertyRequestBody:
  Future<Response> communitiesChangePlayerPropertyPutWithHttpInfo({ ChangePlayerPropertyRequestBody? changePlayerPropertyRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/change-player-property';

    // ignore: prefer_final_locals
    Object? postBody = changePlayerPropertyRequestBody;

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
  /// * [ChangePlayerPropertyRequestBody] changePlayerPropertyRequestBody:
  Future<Success?> communitiesChangePlayerPropertyPut({ ChangePlayerPropertyRequestBody? changePlayerPropertyRequestBody, }) async {
    final response = await communitiesChangePlayerPropertyPutWithHttpInfo( changePlayerPropertyRequestBody: changePlayerPropertyRequestBody, );
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

  /// コミュニティの取得
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

  /// コミュニティの取得
  ///
  /// Parameters:
  ///
  /// * [String] communityId (required):
  Future<CommunityReadModel?> communitiesCommunityIdGet(String communityId,) async {
    final response = await communitiesCommunityIdGetWithHttpInfo(communityId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommunityReadModel',) as CommunityReadModel;
    
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
  Future<List<MemberReadModel>?> communitiesCommunityIdMembersGet(String communityId,) async {
    final response = await communitiesCommunityIdMembersGetWithHttpInfo(communityId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MemberReadModel>') as List)
        .cast<MemberReadModel>()
        .toList();

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
  Future<List<PlayerReadModel>?> communitiesCommunityIdPlayersGet(String communityId,) async {
    final response = await communitiesCommunityIdPlayersGetWithHttpInfo(communityId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PlayerReadModel>') as List)
        .cast<PlayerReadModel>()
        .toList();

    }
    return null;
  }

  /// コミュニティの作成
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateCommunityRequestBody] createCommunityRequestBody:
  Future<Response> communitiesCreateCommunityPostWithHttpInfo({ CreateCommunityRequestBody? createCommunityRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/create-community';

    // ignore: prefer_final_locals
    Object? postBody = createCommunityRequestBody;

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
  /// * [CreateCommunityRequestBody] createCommunityRequestBody:
  Future<Success?> communitiesCreateCommunityPost({ CreateCommunityRequestBody? createCommunityRequestBody, }) async {
    final response = await communitiesCreateCommunityPostWithHttpInfo( createCommunityRequestBody: createCommunityRequestBody, );
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
  /// * [DeleteCommunityRequestBody] deleteCommunityRequestBody:
  Future<Response> communitiesDeleteCommunityPostWithHttpInfo({ DeleteCommunityRequestBody? deleteCommunityRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/delete-community';

    // ignore: prefer_final_locals
    Object? postBody = deleteCommunityRequestBody;

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
  /// * [DeleteCommunityRequestBody] deleteCommunityRequestBody:
  Future<Success?> communitiesDeleteCommunityPost({ DeleteCommunityRequestBody? deleteCommunityRequestBody, }) async {
    final response = await communitiesDeleteCommunityPostWithHttpInfo( deleteCommunityRequestBody: deleteCommunityRequestBody, );
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
  /// * [EditCommunityDescriptionRequestBody] editCommunityDescriptionRequestBody:
  Future<Response> communitiesEditCommunityDescriptionPutWithHttpInfo({ EditCommunityDescriptionRequestBody? editCommunityDescriptionRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/edit-community-description';

    // ignore: prefer_final_locals
    Object? postBody = editCommunityDescriptionRequestBody;

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
  /// * [EditCommunityDescriptionRequestBody] editCommunityDescriptionRequestBody:
  Future<Success?> communitiesEditCommunityDescriptionPut({ EditCommunityDescriptionRequestBody? editCommunityDescriptionRequestBody, }) async {
    final response = await communitiesEditCommunityDescriptionPutWithHttpInfo( editCommunityDescriptionRequestBody: editCommunityDescriptionRequestBody, );
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

  /// コミュニティ一覧の取得
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> communitiesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/communities';

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
  Future<List<CommunityReadModel>?> communitiesGet() async {
    final response = await communitiesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CommunityReadModel>') as List)
        .cast<CommunityReadModel>()
        .toList();

    }
    return null;
  }

  /// コミュニティからメンバーを削除
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RemoveMemberRequestBody] removeMemberRequestBody:
  Future<Response> communitiesRemoveMemberPostWithHttpInfo({ RemoveMemberRequestBody? removeMemberRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/remove-member';

    // ignore: prefer_final_locals
    Object? postBody = removeMemberRequestBody;

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
  /// * [RemoveMemberRequestBody] removeMemberRequestBody:
  Future<Success?> communitiesRemoveMemberPost({ RemoveMemberRequestBody? removeMemberRequestBody, }) async {
    final response = await communitiesRemoveMemberPostWithHttpInfo( removeMemberRequestBody: removeMemberRequestBody, );
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
  /// * [RemovePlayerRequestBody] removePlayerRequestBody:
  Future<Response> communitiesRemovePlayerPostWithHttpInfo({ RemovePlayerRequestBody? removePlayerRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/remove-player';

    // ignore: prefer_final_locals
    Object? postBody = removePlayerRequestBody;

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
  /// * [RemovePlayerRequestBody] removePlayerRequestBody:
  Future<Success?> communitiesRemovePlayerPost({ RemovePlayerRequestBody? removePlayerRequestBody, }) async {
    final response = await communitiesRemovePlayerPostWithHttpInfo( removePlayerRequestBody: removePlayerRequestBody, );
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
  /// * [RenameCommunityRequestBody] renameCommunityRequestBody:
  Future<Response> communitiesRenameCommunityPutWithHttpInfo({ RenameCommunityRequestBody? renameCommunityRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/rename-community';

    // ignore: prefer_final_locals
    Object? postBody = renameCommunityRequestBody;

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
  /// * [RenameCommunityRequestBody] renameCommunityRequestBody:
  Future<Success?> communitiesRenameCommunityPut({ RenameCommunityRequestBody? renameCommunityRequestBody, }) async {
    final response = await communitiesRenameCommunityPutWithHttpInfo( renameCommunityRequestBody: renameCommunityRequestBody, );
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
  /// * [ResetPlayerNumGamesRequestBody] resetPlayerNumGamesRequestBody:
  Future<Response> communitiesResetPlayerNumGamesPutWithHttpInfo({ ResetPlayerNumGamesRequestBody? resetPlayerNumGamesRequestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/communities/reset-player-num-games';

    // ignore: prefer_final_locals
    Object? postBody = resetPlayerNumGamesRequestBody;

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
  /// * [ResetPlayerNumGamesRequestBody] resetPlayerNumGamesRequestBody:
  Future<Success?> communitiesResetPlayerNumGamesPut({ ResetPlayerNumGamesRequestBody? resetPlayerNumGamesRequestBody, }) async {
    final response = await communitiesResetPlayerNumGamesPutWithHttpInfo( resetPlayerNumGamesRequestBody: resetPlayerNumGamesRequestBody, );
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
