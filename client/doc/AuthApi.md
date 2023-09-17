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
> UserReadModel authActivateUserPost(activateUser)

本登録

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final activateUser = ActivateUser(); // ActivateUser | 

try {
    final result = api_instance.authActivateUserPost(activateUser);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authActivateUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateUser** | [**ActivateUser**](ActivateUser.md)|  | [optional] 

### Return type

[**UserReadModel**](UserReadModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authLoginPost**
> Token authLoginPost(login)

ログイン

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final login = Login(); // Login | 

try {
    final result = api_instance.authLoginPost(login);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | [**Login**](Login.md)|  | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTemporaryRegistrationPost**
> Success authTemporaryRegistrationPost(temporaryRegistration)

仮登録

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final temporaryRegistration = TemporaryRegistration(); // TemporaryRegistration | 

try {
    final result = api_instance.authTemporaryRegistrationPost(temporaryRegistration);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authTemporaryRegistrationPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **temporaryRegistration** | [**TemporaryRegistration**](TemporaryRegistration.md)|  | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

