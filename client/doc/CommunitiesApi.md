# openapi.api.CommunitiesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**communitiesAddMemberPost**](CommunitiesApi.md#communitiesaddmemberpost) | **POST** /communities/add-member | コミュニティにメンバーを追加
[**communitiesAddPlayerPost**](CommunitiesApi.md#communitiesaddplayerpost) | **POST** /communities/add-player | コミュニティにプレイヤーを追加
[**communitiesChangeMemberRolePut**](CommunitiesApi.md#communitieschangememberroleput) | **PUT** /communities/change-member-role | メンバーの権限を変更
[**communitiesChangePlayerNumGamesPut**](CommunitiesApi.md#communitieschangeplayernumgamesput) | **PUT** /communities/change-player-num-games | プレイヤーの試合数を変更
[**communitiesChangePlayerPropertyPut**](CommunitiesApi.md#communitieschangeplayerpropertyput) | **PUT** /communities/change-player-property | プレイヤーのプロパティを変更
[**communitiesCommunityIdGenerateMatchesGet**](CommunitiesApi.md#communitiescommunityidgeneratematchesget) | **GET** /communities/{community-id}/generate-matches | マッチの生成
[**communitiesCommunityIdGet**](CommunitiesApi.md#communitiescommunityidget) | **GET** /communities/{community-id} | コミュニティの取得
[**communitiesCommunityIdMembersGet**](CommunitiesApi.md#communitiescommunityidmembersget) | **GET** /communities/{community-id}/members | メンバー一覧の取得
[**communitiesCommunityIdPlayersGet**](CommunitiesApi.md#communitiescommunityidplayersget) | **GET** /communities/{community-id}/players | プレイヤー一覧の取得
[**communitiesCreateCommunityPost**](CommunitiesApi.md#communitiescreatecommunitypost) | **POST** /communities/create-community | コミュニティの作成
[**communitiesDeleteCommunityPost**](CommunitiesApi.md#communitiesdeletecommunitypost) | **POST** /communities/delete-community | コミュニティの削除
[**communitiesEditCommunityDescriptionPut**](CommunitiesApi.md#communitieseditcommunitydescriptionput) | **PUT** /communities/edit-community-description | コミュニティの説明文の変更
[**communitiesGet**](CommunitiesApi.md#communitiesget) | **GET** /communities | コミュニティ一覧の取得
[**communitiesRemoveMemberPost**](CommunitiesApi.md#communitiesremovememberpost) | **POST** /communities/remove-member | コミュニティからメンバーを削除
[**communitiesRemovePlayerPost**](CommunitiesApi.md#communitiesremoveplayerpost) | **POST** /communities/remove-player | コミュニティからプレイヤーを削除
[**communitiesRenameCommunityPut**](CommunitiesApi.md#communitiesrenamecommunityput) | **PUT** /communities/rename-community | コミュニティ名の変更
[**communitiesResetPlayerNumGamesPut**](CommunitiesApi.md#communitiesresetplayernumgamesput) | **PUT** /communities/reset-player-num-games | プレイヤーの試合数をリセット


# **communitiesAddMemberPost**
> Success communitiesAddMemberPost(addMemberRequestBody)

コミュニティにメンバーを追加

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final AddMemberRequestBody addMemberRequestBody = ; // AddMemberRequestBody | 

try {
    final response = api.communitiesAddMemberPost(addMemberRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesAddMemberPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addMemberRequestBody** | [**AddMemberRequestBody**](AddMemberRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesAddPlayerPost**
> Success communitiesAddPlayerPost(addPlayerRequestBody)

コミュニティにプレイヤーを追加

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final AddPlayerRequestBody addPlayerRequestBody = ; // AddPlayerRequestBody | 

try {
    final response = api.communitiesAddPlayerPost(addPlayerRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesAddPlayerPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addPlayerRequestBody** | [**AddPlayerRequestBody**](AddPlayerRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesChangeMemberRolePut**
> Success communitiesChangeMemberRolePut(changeMemberRoleRequestBody)

メンバーの権限を変更

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final ChangeMemberRoleRequestBody changeMemberRoleRequestBody = ; // ChangeMemberRoleRequestBody | 

try {
    final response = api.communitiesChangeMemberRolePut(changeMemberRoleRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesChangeMemberRolePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changeMemberRoleRequestBody** | [**ChangeMemberRoleRequestBody**](ChangeMemberRoleRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesChangePlayerNumGamesPut**
> Success communitiesChangePlayerNumGamesPut(changePlayerNumGamesRequestBody)

プレイヤーの試合数を変更

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final ChangePlayerNumGamesRequestBody changePlayerNumGamesRequestBody = ; // ChangePlayerNumGamesRequestBody | 

try {
    final response = api.communitiesChangePlayerNumGamesPut(changePlayerNumGamesRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesChangePlayerNumGamesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePlayerNumGamesRequestBody** | [**ChangePlayerNumGamesRequestBody**](ChangePlayerNumGamesRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesChangePlayerPropertyPut**
> Success communitiesChangePlayerPropertyPut(changePlayerPropertyRequestBody)

プレイヤーのプロパティを変更

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final ChangePlayerPropertyRequestBody changePlayerPropertyRequestBody = ; // ChangePlayerPropertyRequestBody | 

try {
    final response = api.communitiesChangePlayerPropertyPut(changePlayerPropertyRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesChangePlayerPropertyPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePlayerPropertyRequestBody** | [**ChangePlayerPropertyRequestBody**](ChangePlayerPropertyRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesCommunityIdGenerateMatchesGet**
> MatchCombination communitiesCommunityIdGenerateMatchesGet(communityId, numCourt, rule)

マッチの生成

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final String communityId = communityId_example; // String | 
final int numCourt = 56; // int | 
final Rule rule = ; // Rule | 

try {
    final response = api.communitiesCommunityIdGenerateMatchesGet(communityId, numCourt, rule);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesCommunityIdGenerateMatchesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communityId** | **String**|  | 
 **numCourt** | **int**|  | 
 **rule** | [**Rule**](.md)|  | 

### Return type

[**MatchCombination**](MatchCombination.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesCommunityIdGet**
> CommunityReadModel communitiesCommunityIdGet(communityId)

コミュニティの取得

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final String communityId = communityId_example; // String | 

try {
    final response = api.communitiesCommunityIdGet(communityId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesCommunityIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communityId** | **String**|  | 

### Return type

[**CommunityReadModel**](CommunityReadModel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesCommunityIdMembersGet**
> BuiltList<MemberReadModel> communitiesCommunityIdMembersGet(communityId)

メンバー一覧の取得

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final String communityId = communityId_example; // String | 

try {
    final response = api.communitiesCommunityIdMembersGet(communityId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesCommunityIdMembersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communityId** | **String**|  | 

### Return type

[**BuiltList&lt;MemberReadModel&gt;**](MemberReadModel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesCommunityIdPlayersGet**
> BuiltList<PlayerReadModel> communitiesCommunityIdPlayersGet(communityId)

プレイヤー一覧の取得

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final String communityId = communityId_example; // String | 

try {
    final response = api.communitiesCommunityIdPlayersGet(communityId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesCommunityIdPlayersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communityId** | **String**|  | 

### Return type

[**BuiltList&lt;PlayerReadModel&gt;**](PlayerReadModel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesCreateCommunityPost**
> Success communitiesCreateCommunityPost(createCommunityRequestBody)

コミュニティの作成

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final CreateCommunityRequestBody createCommunityRequestBody = ; // CreateCommunityRequestBody | 

try {
    final response = api.communitiesCreateCommunityPost(createCommunityRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesCreateCommunityPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCommunityRequestBody** | [**CreateCommunityRequestBody**](CreateCommunityRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesDeleteCommunityPost**
> Success communitiesDeleteCommunityPost(deleteCommunityRequestBody)

コミュニティの削除

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final DeleteCommunityRequestBody deleteCommunityRequestBody = ; // DeleteCommunityRequestBody | 

try {
    final response = api.communitiesDeleteCommunityPost(deleteCommunityRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesDeleteCommunityPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteCommunityRequestBody** | [**DeleteCommunityRequestBody**](DeleteCommunityRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesEditCommunityDescriptionPut**
> Success communitiesEditCommunityDescriptionPut(editCommunityDescriptionRequestBody)

コミュニティの説明文の変更

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final EditCommunityDescriptionRequestBody editCommunityDescriptionRequestBody = ; // EditCommunityDescriptionRequestBody | 

try {
    final response = api.communitiesEditCommunityDescriptionPut(editCommunityDescriptionRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesEditCommunityDescriptionPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **editCommunityDescriptionRequestBody** | [**EditCommunityDescriptionRequestBody**](EditCommunityDescriptionRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesGet**
> BuiltList<CommunityReadModel> communitiesGet()

コミュニティ一覧の取得

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();

try {
    final response = api.communitiesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CommunityReadModel&gt;**](CommunityReadModel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesRemoveMemberPost**
> Success communitiesRemoveMemberPost(removeMemberRequestBody)

コミュニティからメンバーを削除

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final RemoveMemberRequestBody removeMemberRequestBody = ; // RemoveMemberRequestBody | 

try {
    final response = api.communitiesRemoveMemberPost(removeMemberRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesRemoveMemberPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **removeMemberRequestBody** | [**RemoveMemberRequestBody**](RemoveMemberRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesRemovePlayerPost**
> Success communitiesRemovePlayerPost(removePlayerRequestBody)

コミュニティからプレイヤーを削除

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final RemovePlayerRequestBody removePlayerRequestBody = ; // RemovePlayerRequestBody | 

try {
    final response = api.communitiesRemovePlayerPost(removePlayerRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesRemovePlayerPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **removePlayerRequestBody** | [**RemovePlayerRequestBody**](RemovePlayerRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesRenameCommunityPut**
> Success communitiesRenameCommunityPut(renameCommunityRequestBody)

コミュニティ名の変更

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final RenameCommunityRequestBody renameCommunityRequestBody = ; // RenameCommunityRequestBody | 

try {
    final response = api.communitiesRenameCommunityPut(renameCommunityRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesRenameCommunityPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **renameCommunityRequestBody** | [**RenameCommunityRequestBody**](RenameCommunityRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesResetPlayerNumGamesPut**
> Success communitiesResetPlayerNumGamesPut(resetPlayerNumGamesRequestBody)

プレイヤーの試合数をリセット

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCommunitiesApi();
final ResetPlayerNumGamesRequestBody resetPlayerNumGamesRequestBody = ; // ResetPlayerNumGamesRequestBody | 

try {
    final response = api.communitiesResetPlayerNumGamesPut(resetPlayerNumGamesRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommunitiesApi->communitiesResetPlayerNumGamesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPlayerNumGamesRequestBody** | [**ResetPlayerNumGamesRequestBody**](ResetPlayerNumGamesRequestBody.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

