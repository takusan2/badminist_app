# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authActivateUserPost**](AuthApi.md#authactivateuserpost) | **POST** /auth/activate-user | 本登録
[**authLoginPost**](AuthApi.md#authloginpost) | **POST** /auth/login | ログイン
[**authTemporaryRegistrationPost**](AuthApi.md#authtemporaryregistrationpost) | **POST** /auth/temporary-registration | 仮登録


# **authActivateUserPost**
> UserReadModel authActivateUserPost(activateUserRequestBody)

本登録

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final ActivateUserRequestBody activateUserRequestBody = ; // ActivateUserRequestBody | 

try {
    final response = api.authActivateUserPost(activateUserRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authActivateUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateUserRequestBody** | [**ActivateUserRequestBody**](ActivateUserRequestBody.md)|  | [optional] 

### Return type

[**UserReadModel**](UserReadModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authLoginPost**
> Token authLoginPost(loginRequestBody)

ログイン

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final LoginRequestBody loginRequestBody = ; // LoginRequestBody | 

try {
    final response = api.authLoginPost(loginRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequestBody** | [**LoginRequestBody**](LoginRequestBody.md)|  | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTemporaryRegistrationPost**
> Token authTemporaryRegistrationPost(temporaryRegistrationRequestBody)

仮登録

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final TemporaryRegistrationRequestBody temporaryRegistrationRequestBody = ; // TemporaryRegistrationRequestBody | 

try {
    final response = api.authTemporaryRegistrationPost(temporaryRegistrationRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authTemporaryRegistrationPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **temporaryRegistrationRequestBody** | [**TemporaryRegistrationRequestBody**](TemporaryRegistrationRequestBody.md)|  | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

