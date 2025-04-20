# UsersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersMasterDetailsRetrieve**](UsersAPI.md#usersmasterdetailsretrieve) | **GET** /users/master-details/ | 
[**usersRegisterCreate**](UsersAPI.md#usersregistercreate) | **POST** /users/register/ | 
[**usersUpdateProfileSuggestCreate**](UsersAPI.md#usersupdateprofilesuggestcreate) | **POST** /users/update-profile-suggest/ | 


# **usersMasterDetailsRetrieve**
```swift
    open class func usersMasterDetailsRetrieve(completion: @escaping (_ data: UserMasterDetailsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


UsersAPI.usersMasterDetailsRetrieve() { (response, error) in
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

[**UserMasterDetailsResponse**](UserMasterDetailsResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRegisterCreate**
```swift
    open class func usersRegisterCreate(usersAppRegisterUserRequest: UsersAppRegisterUserRequest, completion: @escaping (_ data: UsersAppRegisterUserResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let usersAppRegisterUserRequest = UsersAppRegisterUserRequest(name: "name_example", phoneNumber: "phoneNumber_example", otp: "otp_example") // UsersAppRegisterUserRequest | 

UsersAPI.usersRegisterCreate(usersAppRegisterUserRequest: usersAppRegisterUserRequest) { (response, error) in
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
 **usersAppRegisterUserRequest** | [**UsersAppRegisterUserRequest**](UsersAppRegisterUserRequest.md) |  | 

### Return type

[**UsersAppRegisterUserResponse**](UsersAppRegisterUserResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUpdateProfileSuggestCreate**
```swift
    open class func usersUpdateProfileSuggestCreate(updateProfileSuggestRequest: UpdateProfileSuggestRequest, completion: @escaping (_ data: UpdateProfileSuggestResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateProfileSuggestRequest = UpdateProfileSuggestRequest(username: "username_example", password: "password_example") // UpdateProfileSuggestRequest | 

UsersAPI.usersUpdateProfileSuggestCreate(updateProfileSuggestRequest: updateProfileSuggestRequest) { (response, error) in
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
 **updateProfileSuggestRequest** | [**UpdateProfileSuggestRequest**](UpdateProfileSuggestRequest.md) |  | 

### Return type

[**UpdateProfileSuggestResponse**](UpdateProfileSuggestResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

