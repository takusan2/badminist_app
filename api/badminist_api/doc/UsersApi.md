# badminist_api.api.UsersApi

## Load the API package
```dart
import 'package:badminist_api/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersMeGet**](UsersApi.md#usersmeget) | **GET** /users/me | 自分のユーザー情報の取得
[**usersReissueConfirmPassPost**](UsersApi.md#usersreissueconfirmpasspost) | **POST** /users/reissue-confirm-pass | パスワード再発行
[**usersUserIdGet**](UsersApi.md#usersuseridget) | **GET** /users/{user-id} | ユーザーの取得


# **usersMeGet**
> UserReadModel usersMeGet()

自分のユーザー情報の取得

### Example
```dart
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();

try {
    final result = api_instance.usersMeGet();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserReadModel**](UserReadModel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersReissueConfirmPassPost**
> Success usersReissueConfirmPassPost()

パスワード再発行

### Example
```dart
import 'package:badminist_api/api.dart';

final api_instance = UsersApi();

try {
    final result = api_instance.usersReissueConfirmPassPost();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersReissueConfirmPassPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Success**](Success.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdGet**
> UserReadModel usersUserIdGet(userId)

ユーザーの取得

### Example
```dart
import 'package:badminist_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.usersUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**UserReadModel**](UserReadModel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

