# AuthAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authApiTokenCreate**](AuthAPI.md#authapitokencreate) | **POST** /auth/api/token/ | 
[**authApiTokenRefreshCreate**](AuthAPI.md#authapitokenrefreshcreate) | **POST** /auth/api/token/refresh/ | 
[**authGetOtpRetrieve**](AuthAPI.md#authgetotpretrieve) | **GET** /auth/get-otp/ | 
[**authGetTokenWithOtpCreate**](AuthAPI.md#authgettokenwithotpcreate) | **POST** /auth/get-token-with-otp/ | 
[**authRegisterCreate**](AuthAPI.md#authregistercreate) | **POST** /auth/register/ | 
[**authTestRetrieve**](AuthAPI.md#authtestretrieve) | **GET** /auth/test/ | 
[**authUnifiedLoginCreate**](AuthAPI.md#authunifiedlogincreate) | **POST** /auth/unified-login/ | 


# **authApiTokenCreate**
```swift
    open class func authApiTokenCreate(tokenObtainPair: TokenObtainPair, completion: @escaping (_ data: TokenObtainPair?, _ error: Error?) -> Void)
```



Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tokenObtainPair = TokenObtainPair(username: "username_example", password: "password_example", access: "access_example", refresh: "refresh_example") // TokenObtainPair | 

AuthAPI.authApiTokenCreate(tokenObtainPair: tokenObtainPair) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenObtainPair** | [**TokenObtainPair**](TokenObtainPair.md) |  | 

### Return type

[**TokenObtainPair**](TokenObtainPair.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authApiTokenRefreshCreate**
```swift
    open class func authApiTokenRefreshCreate(tokenRefresh: TokenRefresh, completion: @escaping (_ data: TokenRefresh?, _ error: Error?) -> Void)
```



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tokenRefresh = TokenRefresh(access: "access_example", refresh: "refresh_example") // TokenRefresh | 

AuthAPI.authApiTokenRefreshCreate(tokenRefresh: tokenRefresh) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenRefresh** | [**TokenRefresh**](TokenRefresh.md) |  | 

### Return type

[**TokenRefresh**](TokenRefresh.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authGetOtpRetrieve**
```swift
    open class func authGetOtpRetrieve(completion: @escaping (_ data: RegistrationOTPResponse?, _ error: Error?) -> Void)
```



GET /get-otp/?phone_number=...&otp_type=...

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AuthAPI.authGetOtpRetrieve() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RegistrationOTPResponse**](RegistrationOTPResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authGetTokenWithOtpCreate**
```swift
    open class func authGetTokenWithOtpCreate(loginWithOTPRequest: LoginWithOTPRequest, completion: @escaping (_ data: LoginWithOTPResponse?, _ error: Error?) -> Void)
```



POST /get-token-with-otp/

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let loginWithOTPRequest = LoginWithOTPRequest(phoneNumber: "phoneNumber_example", otp: "otp_example") // LoginWithOTPRequest | 

AuthAPI.authGetTokenWithOtpCreate(loginWithOTPRequest: loginWithOTPRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginWithOTPRequest** | [**LoginWithOTPRequest**](LoginWithOTPRequest.md) |  | 

### Return type

[**LoginWithOTPResponse**](LoginWithOTPResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRegisterCreate**
```swift
    open class func authRegisterCreate(registerUserRequest: RegisterUserRequest, completion: @escaping (_ data: RegisterUserResponse?, _ error: Error?) -> Void)
```



POST /register/

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let registerUserRequest = RegisterUserRequest(phoneNumber: "phoneNumber_example", password: "password_example", otp: "otp_example") // RegisterUserRequest | 

AuthAPI.authRegisterCreate(registerUserRequest: registerUserRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerUserRequest** | [**RegisterUserRequest**](RegisterUserRequest.md) |  | 

### Return type

[**RegisterUserResponse**](RegisterUserResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTestRetrieve**
```swift
    open class func authTestRetrieve(completion: @escaping (_ data: TestResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AuthAPI.authTestRetrieve() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TestResponse**](TestResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUnifiedLoginCreate**
```swift
    open class func authUnifiedLoginCreate(unifiedLoginRequest: UnifiedLoginRequest, completion: @escaping (_ data: UnifiedLoginResponse?, _ error: Error?) -> Void)
```



POST /unified-login/

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let unifiedLoginRequest = UnifiedLoginRequest(phoneNumber: "phoneNumber_example", otp: "otp_example") // UnifiedLoginRequest | 

AuthAPI.authUnifiedLoginCreate(unifiedLoginRequest: unifiedLoginRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unifiedLoginRequest** | [**UnifiedLoginRequest**](UnifiedLoginRequest.md) |  | 

### Return type

[**UnifiedLoginResponse**](UnifiedLoginResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

