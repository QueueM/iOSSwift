# CompanyAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**companyRegisterCreate**](CompanyAPI.md#companyregistercreate) | **POST** /company/register/ | 


# **companyRegisterCreate**
```swift
    open class func companyRegisterCreate(registerCompanyRequest: RegisterCompanyRequest, completion: @escaping (_ data: RegisterCompanyResponse?, _ error: Error?) -> Void)
```



POST /company/register/

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let registerCompanyRequest = RegisterCompanyRequest(userId: 123, name: "name_example", description: "description_example", address: "address_example", merchantType: MerchantTypeEnum()) // RegisterCompanyRequest | 

CompanyAPI.companyRegisterCreate(registerCompanyRequest: registerCompanyRequest) { (response, error) in
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
 **registerCompanyRequest** | [**RegisterCompanyRequest**](RegisterCompanyRequest.md) |  | 

### Return type

[**RegisterCompanyResponse**](RegisterCompanyResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

