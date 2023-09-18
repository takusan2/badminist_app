import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CommunitiesApi
void main() {
  final instance = Openapi().getCommunitiesApi();

  group(CommunitiesApi, () {
    // コミュニティにメンバーを追加
    //
    //Future<Success> communitiesAddMemberPost({ AddMemberRequestBody addMemberRequestBody }) async
    test('test communitiesAddMemberPost', () async {
      // TODO
    });

    // コミュニティにプレイヤーを追加
    //
    //Future<Success> communitiesAddPlayerPost({ AddPlayerRequestBody addPlayerRequestBody }) async
    test('test communitiesAddPlayerPost', () async {
      // TODO
    });

    // メンバーの権限を変更
    //
    //Future<Success> communitiesChangeMemberRolePut({ ChangeMemberRoleRequestBody changeMemberRoleRequestBody }) async
    test('test communitiesChangeMemberRolePut', () async {
      // TODO
    });

    // プレイヤーの試合数を変更
    //
    //Future<Success> communitiesChangePlayerNumGamesPut({ ChangePlayerNumGamesRequestBody changePlayerNumGamesRequestBody }) async
    test('test communitiesChangePlayerNumGamesPut', () async {
      // TODO
    });

    // プレイヤーのプロパティを変更
    //
    //Future<Success> communitiesChangePlayerPropertyPut({ ChangePlayerPropertyRequestBody changePlayerPropertyRequestBody }) async
    test('test communitiesChangePlayerPropertyPut', () async {
      // TODO
    });

    // マッチの生成
    //
    //Future<MatchCombination> communitiesCommunityIdGenerateMatchesGet(String communityId, int numCourt, Rule rule) async
    test('test communitiesCommunityIdGenerateMatchesGet', () async {
      // TODO
    });

    // コミュニティ一覧の取得
    //
    //Future<CommunityList> communitiesCommunityIdGet(String communityId) async
    test('test communitiesCommunityIdGet', () async {
      // TODO
    });

    // メンバー一覧の取得
    //
    //Future<MemberList> communitiesCommunityIdMembersGet(String communityId) async
    test('test communitiesCommunityIdMembersGet', () async {
      // TODO
    });

    // プレイヤー一覧の取得
    //
    //Future<PlayerList> communitiesCommunityIdPlayersGet(String communityId) async
    test('test communitiesCommunityIdPlayersGet', () async {
      // TODO
    });

    // コミュニティの作成
    //
    //Future<Success> communitiesCreateCommunityPost({ CreateCommunityRequestBody createCommunityRequestBody }) async
    test('test communitiesCreateCommunityPost', () async {
      // TODO
    });

    // コミュニティの削除
    //
    //Future<Success> communitiesDeleteCommunityPost({ DeleteCommunityRequestBody deleteCommunityRequestBody }) async
    test('test communitiesDeleteCommunityPost', () async {
      // TODO
    });

    // コミュニティの説明文の変更
    //
    //Future<Success> communitiesEditCommunityDescriptionPut({ EditCommunityDescriptionRequestBody editCommunityDescriptionRequestBody }) async
    test('test communitiesEditCommunityDescriptionPut', () async {
      // TODO
    });

    // コミュニティからメンバーを削除
    //
    //Future<Success> communitiesRemoveMemberPost({ RemoveMemberRequestBody removeMemberRequestBody }) async
    test('test communitiesRemoveMemberPost', () async {
      // TODO
    });

    // コミュニティからプレイヤーを削除
    //
    //Future<Success> communitiesRemovePlayerPost({ RemovePlayerRequestBody removePlayerRequestBody }) async
    test('test communitiesRemovePlayerPost', () async {
      // TODO
    });

    // コミュニティ名の変更
    //
    //Future<Success> communitiesRenameCommunityPut({ RenameCommunityRequestBody renameCommunityRequestBody }) async
    test('test communitiesRenameCommunityPut', () async {
      // TODO
    });

    // プレイヤーの試合数をリセット
    //
    //Future<Success> communitiesResetPlayerNumGamesPut({ ResetPlayerNumGamesRequestBody resetPlayerNumGamesRequestBody }) async
    test('test communitiesResetPlayerNumGamesPut', () async {
      // TODO
    });

  });
}
