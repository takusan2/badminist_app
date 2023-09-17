//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthApi {
  AuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 本登録
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ActivateUser] activateUser:
  Future<Response> authActivateUserPostWithHttpInfo({ ActivateUser? activateUser, }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/activate-user';

    // ignore: prefer_final_locals
    Object? postBody = activateUser;

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

  /// 本登録
  ///
  /// Parameters:
  ///
  /// * [ActivateUser] activateUser:
  Future<UserReadModel?> authActivateUserPost({ ActivateUser? activateUser, }) async {
    final response = await authActivateUserPostWithHttpInfo( activateUser: activateUser, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserReadModel',) as UserReadModel;
    
    }
    return null;
  }

  /// ログイン
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Login] login:
  Future<Response> authLoginPostWithHttpInfo({ Login? login, }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/login';

    // ignore: prefer_final_locals
    Object? postBody = login;

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

  /// ログイン
  ///
  /// Parameters:
  ///
  /// * [Login] login:
  Future<Token?> authLoginPost({ Login? login, }) async {
    final response = await authLoginPostWithHttpInfo( login: login, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Token',) as Token;
    
    }
    return null;
  }

  /// 仮登録
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TemporaryRegistration] temporaryRegistration:
  Future<Response> authTemporaryRegistrationPostWithHttpInfo({ TemporaryRegistration? temporaryRegistration, }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/temporary-registration';

    // ignore: prefer_final_locals
    Object? postBody = temporaryRegistration;

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

  /// 仮登録
  ///
  /// Parameters:
  ///
  /// * [TemporaryRegistration] temporaryRegistration:
  Future<Success?> authTemporaryRegistrationPost({ TemporaryRegistration? temporaryRegistration, }) async {
    final response = await authTemporaryRegistrationPostWithHttpInfo( temporaryRegistration: temporaryRegistration, );
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
