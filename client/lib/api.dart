//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/auth_api.dart';
part 'api/communities_api.dart';
part 'api/users_api.dart';

part 'model/activate_user.dart';
part 'model/add_member.dart';
part 'model/add_player.dart';
part 'model/change_member_role.dart';
part 'model/change_player_num_games.dart';
part 'model/change_player_property.dart';
part 'model/community_list.dart';
part 'model/community_read_model.dart';
part 'model/create_community.dart';
part 'model/delete_community.dart';
part 'model/edit_community_description.dart';
part 'model/failure.dart';
part 'model/login.dart';
part 'model/match.dart';
part 'model/match_combination.dart';
part 'model/member_list.dart';
part 'model/member_read_model.dart';
part 'model/player_gender.dart';
part 'model/player_level.dart';
part 'model/player_list.dart';
part 'model/player_read_model.dart';
part 'model/player_status.dart';
part 'model/remove_member.dart';
part 'model/remove_player.dart';
part 'model/rename_community.dart';
part 'model/reset_player_num_games.dart';
part 'model/role.dart';
part 'model/rule.dart';
part 'model/success.dart';
part 'model/team.dart';
part 'model/temporary_registration.dart';
part 'model/token.dart';
part 'model/user_read_model.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
