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
[**communitiesCommunityIdGet**](CommunitiesApi.md#communitiescommunityidget) | **GET** /communities/{community-id} | コミュニティ一覧の取得
[**communitiesCommunityIdMembersGet**](CommunitiesApi.md#communitiescommunityidmembersget) | **GET** /communities/{community-id}/members | メンバー一覧の取得
[**communitiesCommunityIdPlayersGet**](CommunitiesApi.md#communitiescommunityidplayersget) | **GET** /communities/{community-id}/players | プレイヤー一覧の取得
[**communitiesCreateCommunityPost**](CommunitiesApi.md#communitiescreatecommunitypost) | **POST** /communities/create-community | コミュニティの作成
[**communitiesDeleteCommunityPost**](CommunitiesApi.md#communitiesdeletecommunitypost) | **POST** /communities/delete-community | コミュニティの削除
[**communitiesEditCommunityDescriptionPut**](CommunitiesApi.md#communitieseditcommunitydescriptionput) | **PUT** /communities/edit-community-description | コミュニティの説明文の変更
[**communitiesRemoveMemberPost**](CommunitiesApi.md#communitiesremovememberpost) | **POST** /communities/remove-member | コミュニティからメンバーを削除
[**communitiesRemovePlayerPost**](CommunitiesApi.md#communitiesremoveplayerpost) | **POST** /communities/remove-player | コミュニティからプレイヤーを削除
[**communitiesRenameCommunityPut**](CommunitiesApi.md#communitiesrenamecommunityput) | **PUT** /communities/rename-community | コミュニティ名の変更
[**communitiesResetPlayerNumGamesPut**](CommunitiesApi.md#communitiesresetplayernumgamesput) | **PUT** /communities/reset-player-num-games | プレイヤーの試合数をリセット


# **communitiesAddMemberPost**
> Success communitiesAddMemberPost(communityId, addMember)

コミュニティにメンバーを追加

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final communityId = communityId_example; // String | 
final addMember = AddMember(); // AddMember | 

try {
    final result = api_instance.communitiesAddMemberPost(communityId, addMember);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesAddMemberPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communityId** | **String**|  | 
 **addMember** | [**AddMember**](AddMember.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesAddPlayerPost**
> Success communitiesAddPlayerPost(addPlayer)

コミュニティにプレイヤーを追加

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final addPlayer = AddPlayer(); // AddPlayer | 

try {
    final result = api_instance.communitiesAddPlayerPost(addPlayer);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesAddPlayerPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addPlayer** | [**AddPlayer**](AddPlayer.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesChangeMemberRolePut**
> Success communitiesChangeMemberRolePut(communityId, changeMemberRole)

メンバーの権限を変更

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final communityId = communityId_example; // String | 
final changeMemberRole = ChangeMemberRole(); // ChangeMemberRole | 

try {
    final result = api_instance.communitiesChangeMemberRolePut(communityId, changeMemberRole);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesChangeMemberRolePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communityId** | **String**|  | 
 **changeMemberRole** | [**ChangeMemberRole**](ChangeMemberRole.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesChangePlayerNumGamesPut**
> Success communitiesChangePlayerNumGamesPut(changePlayerNumGames)

プレイヤーの試合数を変更

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final changePlayerNumGames = ChangePlayerNumGames(); // ChangePlayerNumGames | 

try {
    final result = api_instance.communitiesChangePlayerNumGamesPut(changePlayerNumGames);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesChangePlayerNumGamesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePlayerNumGames** | [**ChangePlayerNumGames**](ChangePlayerNumGames.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesChangePlayerPropertyPut**
> Success communitiesChangePlayerPropertyPut(changePlayerProperty)

プレイヤーのプロパティを変更

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final changePlayerProperty = ChangePlayerProperty(); // ChangePlayerProperty | 

try {
    final result = api_instance.communitiesChangePlayerPropertyPut(changePlayerProperty);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesChangePlayerPropertyPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePlayerProperty** | [**ChangePlayerProperty**](ChangePlayerProperty.md)|  | [optional] 

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
> CommunityList communitiesCommunityIdGet(communityId)

コミュニティ一覧の取得

### Example
```dart
import 'package:openapi/api.dart';
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

[**CommunityList**](CommunityList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesCommunityIdMembersGet**
> MemberList communitiesCommunityIdMembersGet(communityId)

メンバー一覧の取得

### Example
```dart
import 'package:openapi/api.dart';
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

[**MemberList**](MemberList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesCommunityIdPlayersGet**
> PlayerList communitiesCommunityIdPlayersGet(communityId)

プレイヤー一覧の取得

### Example
```dart
import 'package:openapi/api.dart';
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

[**PlayerList**](PlayerList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesCreateCommunityPost**
> Success communitiesCreateCommunityPost(createCommunity)

コミュニティの作成

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final createCommunity = CreateCommunity(); // CreateCommunity | 

try {
    final result = api_instance.communitiesCreateCommunityPost(createCommunity);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesCreateCommunityPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCommunity** | [**CreateCommunity**](CreateCommunity.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesDeleteCommunityPost**
> Success communitiesDeleteCommunityPost(deleteCommunity)

コミュニティの削除

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final deleteCommunity = DeleteCommunity(); // DeleteCommunity | 

try {
    final result = api_instance.communitiesDeleteCommunityPost(deleteCommunity);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesDeleteCommunityPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteCommunity** | [**DeleteCommunity**](DeleteCommunity.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesEditCommunityDescriptionPut**
> Success communitiesEditCommunityDescriptionPut(editCommunityDescription)

コミュニティの説明文の変更

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final editCommunityDescription = EditCommunityDescription(); // EditCommunityDescription | 

try {
    final result = api_instance.communitiesEditCommunityDescriptionPut(editCommunityDescription);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesEditCommunityDescriptionPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **editCommunityDescription** | [**EditCommunityDescription**](EditCommunityDescription.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesRemoveMemberPost**
> Success communitiesRemoveMemberPost(communityId, removeMember)

コミュニティからメンバーを削除

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final communityId = communityId_example; // String | 
final removeMember = RemoveMember(); // RemoveMember | 

try {
    final result = api_instance.communitiesRemoveMemberPost(communityId, removeMember);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesRemoveMemberPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communityId** | **String**|  | 
 **removeMember** | [**RemoveMember**](RemoveMember.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesRemovePlayerPost**
> Success communitiesRemovePlayerPost(removePlayer)

コミュニティからプレイヤーを削除

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final removePlayer = RemovePlayer(); // RemovePlayer | 

try {
    final result = api_instance.communitiesRemovePlayerPost(removePlayer);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesRemovePlayerPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **removePlayer** | [**RemovePlayer**](RemovePlayer.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesRenameCommunityPut**
> Success communitiesRenameCommunityPut(renameCommunity)

コミュニティ名の変更

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final renameCommunity = RenameCommunity(); // RenameCommunity | 

try {
    final result = api_instance.communitiesRenameCommunityPut(renameCommunity);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesRenameCommunityPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **renameCommunity** | [**RenameCommunity**](RenameCommunity.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communitiesResetPlayerNumGamesPut**
> Success communitiesResetPlayerNumGamesPut(resetPlayerNumGames)

プレイヤーの試合数をリセット

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CommunitiesApi();
final resetPlayerNumGames = ResetPlayerNumGames(); // ResetPlayerNumGames | 

try {
    final result = api_instance.communitiesResetPlayerNumGamesPut(resetPlayerNumGames);
    print(result);
} catch (e) {
    print('Exception when calling CommunitiesApi->communitiesResetPlayerNumGamesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPlayerNumGames** | [**ResetPlayerNumGames**](ResetPlayerNumGames.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

