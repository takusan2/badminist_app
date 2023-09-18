//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/activate_user_request_body.dart';
import 'package:openapi/src/model/add_member_request_body.dart';
import 'package:openapi/src/model/add_player_request_body.dart';
import 'package:openapi/src/model/change_member_role_request_body.dart';
import 'package:openapi/src/model/change_player_num_games_request_body.dart';
import 'package:openapi/src/model/change_player_property_request_body.dart';
import 'package:openapi/src/model/community_read_model.dart';
import 'package:openapi/src/model/create_community_request_body.dart';
import 'package:openapi/src/model/delete_community_request_body.dart';
import 'package:openapi/src/model/edit_community_description_request_body.dart';
import 'package:openapi/src/model/failure.dart';
import 'package:openapi/src/model/login_request_body.dart';
import 'package:openapi/src/model/match.dart';
import 'package:openapi/src/model/match_combination.dart';
import 'package:openapi/src/model/member_read_model.dart';
import 'package:openapi/src/model/player_gender.dart';
import 'package:openapi/src/model/player_level.dart';
import 'package:openapi/src/model/player_read_model.dart';
import 'package:openapi/src/model/player_status.dart';
import 'package:openapi/src/model/remove_member_request_body.dart';
import 'package:openapi/src/model/remove_player_request_body.dart';
import 'package:openapi/src/model/rename_community_request_body.dart';
import 'package:openapi/src/model/reset_player_num_games_request_body.dart';
import 'package:openapi/src/model/role.dart';
import 'package:openapi/src/model/rule.dart';
import 'package:openapi/src/model/success.dart';
import 'package:openapi/src/model/team.dart';
import 'package:openapi/src/model/temporary_registration_request_body.dart';
import 'package:openapi/src/model/token.dart';
import 'package:openapi/src/model/user_read_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  ActivateUserRequestBody,
  AddMemberRequestBody,
  AddPlayerRequestBody,
  ChangeMemberRoleRequestBody,
  ChangePlayerNumGamesRequestBody,
  ChangePlayerPropertyRequestBody,
  CommunityReadModel,
  CreateCommunityRequestBody,
  DeleteCommunityRequestBody,
  EditCommunityDescriptionRequestBody,
  Failure,
  LoginRequestBody,
  Match,
  MatchCombination,
  MemberReadModel,
  PlayerGender,
  PlayerLevel,
  PlayerReadModel,
  PlayerStatus,
  RemoveMemberRequestBody,
  RemovePlayerRequestBody,
  RenameCommunityRequestBody,
  ResetPlayerNumGamesRequestBody,
  Role,
  Rule,
  Success,
  Team,
  TemporaryRegistrationRequestBody,
  Token,
  UserReadModel,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PlayerReadModel)]),
        () => ListBuilder<PlayerReadModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MemberReadModel)]),
        () => ListBuilder<MemberReadModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CommunityReadModel)]),
        () => ListBuilder<CommunityReadModel>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
