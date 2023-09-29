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

final authProvider =
    AsyncNotifierProvider<AuthNotifier, UserReadModel?>(AuthNotifier.new);

class AuthNotifier extends AsyncNotifier<UserReadModel?> {
  AuthNotifier();

  Openapi get openApi => ref.watch(openApiProvider);
  AuthApi get authApi => ref.watch(openApiProvider).getAuthApi();
  UsersApi get usersApi => ref.watch(openApiProvider).getUsersApi();
  SecureStorageRepository get secureStorageRepository =>
      ref.read(secureStorageRepositoryProvider);

  @override
  FutureOr<UserReadModel?> build() async {
    final isLogin = await this.isLogin();
    if (isLogin) {
      return await fetchUser();
    }
    return null;
  }

  Future<void> login(String email, String password) async {
    try {
      final response = await authApi.authLoginPost(
        loginRequestBody: LoginRequestBody(
          (b) => b
            ..email = email
            ..password = password,
        ),
      );
      final token = response.data?.token;
      if (token != null) {
        await secureStorageRepository.save(SecureStorageKey.token, token);
      }
      await setUser();
    } on DioException catch (e) {
      throw ApiException(e.response?.data.toString());
    } on Exception catch (e) {
      debugPrint('login: ${e.toString()}');
    }
  }

  Future<void> logout() async {
    await secureStorageRepository.save(SecureStorageKey.token, null);
    await unSetUser();
  }

  Future<void> temporaryRegistration({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final token = await authApi.authTemporaryRegistrationPost(
        temporaryRegistrationRequestBody: TemporaryRegistrationRequestBody(
          (b) => b
            ..name = name
            ..email = email
            ..password = password,
        ),
      );
      await secureStorageRepository.save(
        SecureStorageKey.token,
        token.data?.token,
      );
      await setUser();
    } on DioException catch (e) {
      throw ApiException(e.response?.data.toString());
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> activateUser({
    required String email,
    required String confirmPass,
  }) async {
    try {
      await authApi.authActivateUserPost(
        activateUserRequestBody: ActivateUserRequestBody(
          (b) => b
            ..email = email
            ..confirmPass = confirmPass,
        ),
      );
      await setUser();
    } on DioException catch (e) {
      debugPrint('activate: ${e.response?.data.toString()}');
    } on Exception catch (e) {
      debugPrint('activate: ${e.toString()}');
    }
  }

  Future<void> reissueConfirmPass() async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      await usersApi.usersReissueConfirmPassPost(
        headers: {'Authorization': 'Bearer $token'},
      );
    } on DioException catch (e) {
      debugPrint('reissueConfirmPass: ${e.response?.data.toString()}');
    } on Exception catch (e) {
      debugPrint('reissueConfirmPass: ${e.toString()}');
    }
  }

  Future<bool> isLogin() async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      return token != null;
    } on Exception catch (e) {
      debugPrint('isLogin: ${e.toString()}');
      return false;
    }
  }

  Future<UserReadModel?> fetchUser() async {
    try {
      final token = await secureStorageRepository.load(SecureStorageKey.token);
      final response = await usersApi.usersMeGet(
        headers: {'Authorization': 'Bearer $token'},
      );
      return response.data!;
    } on Exception catch (e) {
      debugPrint('fetchUser: ${e.toString()}');
      return null;
    }
  }

  Future<void> setUser() async {
    state = const AsyncLoading<UserReadModel?>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async => await fetchUser(),
    );
  }

  Future<void> unSetUser() async {
    state = const AsyncValue.data(null);
  }
}
