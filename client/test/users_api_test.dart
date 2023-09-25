import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UsersApi
void main() {
  final instance = Openapi().getUsersApi();

  group(UsersApi, () {
    // 自分のユーザー情報の取得
    //
    //Future<UserReadModel> usersMeGet() async
    test('test usersMeGet', () async {
      // TODO
    });

    // ユーザーの取得
    //
    //Future<UserReadModel> usersUserIdGet(String userId) async
    test('test usersUserIdGet', () async {
      // TODO
    });

  });
}
