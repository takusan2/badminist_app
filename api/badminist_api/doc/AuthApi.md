# badminist_api.api.AuthApi

## Load the API package
```dart
import 'package:badminist_api/api.dart';
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
import 'package:badminist_api/api.dart';

final api_instance = AuthApi();
final activateUserRequestBody = ActivateUserRequestBody(); // ActivateUserRequestBody | 

try {
    final result = api_instance.authActivateUserPost(activateUserRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';

final api_instance = AuthApi();
final loginRequestBody = LoginRequestBody(); // LoginRequestBody | 

try {
    final result = api_instance.authLoginPost(loginRequestBody);
    print(result);
} catch (e) {
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
import 'package:badminist_api/api.dart';

final api_instance = AuthApi();
final temporaryRegistrationRequestBody = TemporaryRegistrationRequestBody(); // TemporaryRegistrationRequestBody | 

try {
    final result = api_instance.authTemporaryRegistrationPost(temporaryRegistrationRequestBody);
    print(result);
} catch (e) {
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

