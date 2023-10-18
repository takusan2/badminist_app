# badminist_api.api.CommunitiesApi

## Load the API package
```dart
import 'package:badminist_api/api.dart';
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final addMemberRequestBody = AddMemberRequestBody(); // AddMemberRequestBody | 

try {
    final result = api_instance.communitiesAddMemberPost(addMemberRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final addPlayerRequestBody = AddPlayerRequestBody(); // AddPlayerRequestBody | 

try {
    final result = api_instance.communitiesAddPlayerPost(addPlayerRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final changeMemberRoleRequestBody = ChangeMemberRoleRequestBody(); // ChangeMemberRoleRequestBody | 

try {
    final result = api_instance.communitiesChangeMemberRolePut(changeMemberRoleRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final changePlayerNumGamesRequestBody = ChangePlayerNumGamesRequestBody(); // ChangePlayerNumGamesRequestBody | 

try {
    final result = api_instance.communitiesChangePlayerNumGamesPut(changePlayerNumGamesRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final changePlayerPropertyRequestBody = ChangePlayerPropertyRequestBody(); // ChangePlayerPropertyRequestBody | 

try {
    final result = api_instance.communitiesChangePlayerPropertyPut(changePlayerPropertyRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final communityId = communityId_example; // String | 
final numCourt = 56; // int | 
final rule = ; // Rule | 

try {
    final result = api_instance.communitiesCommunityIdGenerateMatchesGet(communityId, numCourt, rule);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final communityId = communityId_example; // String | 

try {
    final result = api_instance.communitiesCommunityIdGet(communityId);
    print(result);
} catch (e) {
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
> List<MemberReadModel> communitiesCommunityIdMembersGet(communityId)

メンバー一覧の取得

### Example
```dart
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final communityId = communityId_example; // String | 

try {
    final result = api_instance.communitiesCommunityIdMembersGet(communityId);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesCommunityIdMembersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communityId** | **String**|  | 

### Return type

[**List<MemberReadModel>**](MemberReadModel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesCommunityIdPlayersGet**
> List<PlayerReadModel> communitiesCommunityIdPlayersGet(communityId)

プレイヤー一覧の取得

### Example
```dart
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final communityId = communityId_example; // String | 

try {
    final result = api_instance.communitiesCommunityIdPlayersGet(communityId);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesCommunityIdPlayersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communityId** | **String**|  | 

### Return type

[**List<PlayerReadModel>**](PlayerReadModel.md)

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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final createCommunityRequestBody = CreateCommunityRequestBody(); // CreateCommunityRequestBody | 

try {
    final result = api_instance.communitiesCreateCommunityPost(createCommunityRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final deleteCommunityRequestBody = DeleteCommunityRequestBody(); // DeleteCommunityRequestBody | 

try {
    final result = api_instance.communitiesDeleteCommunityPost(deleteCommunityRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final editCommunityDescriptionRequestBody = EditCommunityDescriptionRequestBody(); // EditCommunityDescriptionRequestBody | 

try {
    final result = api_instance.communitiesEditCommunityDescriptionPut(editCommunityDescriptionRequestBody);
    print(result);
} catch (e) {
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
> List<CommunityReadModel> communitiesGet()

コミュニティ一覧の取得

### Example
```dart
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();

try {
    final result = api_instance.communitiesGet();
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CommunityReadModel>**](CommunityReadModel.md)

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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final removeMemberRequestBody = RemoveMemberRequestBody(); // RemoveMemberRequestBody | 

try {
    final result = api_instance.communitiesRemoveMemberPost(removeMemberRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final removePlayerRequestBody = RemovePlayerRequestBody(); // RemovePlayerRequestBody | 

try {
    final result = api_instance.communitiesRemovePlayerPost(removePlayerRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final renameCommunityRequestBody = RenameCommunityRequestBody(); // RenameCommunityRequestBody | 

try {
    final result = api_instance.communitiesRenameCommunityPut(renameCommunityRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final resetPlayerNumGamesRequestBody = ResetPlayerNumGamesRequestBody(); // ResetPlayerNumGamesRequestBody | 

try {
    final result = api_instance.communitiesResetPlayerNumGamesPut(resetPlayerNumGamesRequestBody);
    print(result);
} catch (e) {
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

