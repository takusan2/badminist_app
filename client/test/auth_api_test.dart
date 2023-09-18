import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    // 本登録
    //
    //Future<UserReadModel> authActivateUserPost({ ActivateUserRequestBody activateUserRequestBody }) async
    test('test authActivateUserPost', () async {
      // TODO
    });

    // ログイン
    //
    //Future<Token> authLoginPost({ LoginRequestBody loginRequestBody }) async
    test('test authLoginPost', () async {
      // TODO
    });

    // 仮登録
    //
    //Future<Success> authTemporaryRegistrationPost({ TemporaryRegistrationRequestBody temporaryRegistrationRequestBody }) async
    test('test authTemporaryRegistrationPost', () async {
      // TODO
    });

  });
}
