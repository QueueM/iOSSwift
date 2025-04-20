# CustomersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customersCustomersCreate**](CustomersAPI.md#customerscustomerscreate) | **POST** /customers/customers/ | 
[**customersCustomersDestroy**](CustomersAPI.md#customerscustomersdestroy) | **DELETE** /customers/customers/{id}/ | 
[**customersCustomersList**](CustomersAPI.md#customerscustomerslist) | **GET** /customers/customers/ | 
[**customersCustomersPartialUpdate**](CustomersAPI.md#customerscustomerspartialupdate) | **PATCH** /customers/customers/{id}/ | 
[**customersCustomersRetrieve**](CustomersAPI.md#customerscustomersretrieve) | **GET** /customers/customers/{id}/ | 
[**customersCustomersUpdate**](CustomersAPI.md#customerscustomersupdate) | **PUT** /customers/customers/{id}/ | 


# **customersCustomersCreate**
```swift
    open class func customersCustomersCreate(customersDetailsModel: CustomersDetailsModel, completion: @escaping (_ data: CustomersDetailsModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customersDetailsModel = CustomersDetailsModel(id: 123, name: "name_example", phoneNumber: "phoneNumber_example", birthDate: Date(), gender: CustomersDetailsModel_gender(), profilePhoto: "profilePhoto_example", customerType: CustomerTypeEnum(), address: "address_example", user: 123, preferredServices: [123]) // CustomersDetailsModel | 

CustomersAPI.customersCustomersCreate(customersDetailsModel: customersDetailsModel) { (response, error) in
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
 **customersDetailsModel** | [**CustomersDetailsModel**](CustomersDetailsModel.md) |  | 

### Return type

[**CustomersDetailsModel**](CustomersDetailsModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersCustomersDestroy**
```swift
    open class func customersCustomersDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this customers details model.

CustomersAPI.customersCustomersDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this customers details model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersCustomersList**
```swift
    open class func customersCustomersList(address: String? = nil, birthDate: Date? = nil, customerType: CustomerType_customersCustomersList? = nil, gender: Gender_customersCustomersList? = nil, name: String? = nil, ordering: String? = nil, page: Int? = nil, phoneNumber: String? = nil, preferredServices: [Int]? = nil, query: String? = nil, user: Int? = nil, completion: @escaping (_ data: PaginatedCustomersDetailsModelList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let address = "address_example" // String |  (optional)
let birthDate = Date() // Date |  (optional)
let customerType = "customerType_example" // String | * `regular` - Regular * `vip` - VIP * `new_customer` - New Customer (optional)
let gender = "gender_example" // String | * `male` - Male * `female` - Female (optional)
let name = "name_example" // String |  (optional)
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let phoneNumber = "phoneNumber_example" // String |  (optional)
let preferredServices = [123] // [Int] |  (optional)
let query = "query_example" // String |  (optional)
let user = 987 // Int |  (optional)

CustomersAPI.customersCustomersList(address: address, birthDate: birthDate, customerType: customerType, gender: gender, name: name, ordering: ordering, page: page, phoneNumber: phoneNumber, preferredServices: preferredServices, query: query, user: user) { (response, error) in
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
 **address** | **String** |  | [optional] 
 **birthDate** | **Date** |  | [optional] 
 **customerType** | **String** | * &#x60;regular&#x60; - Regular * &#x60;vip&#x60; - VIP * &#x60;new_customer&#x60; - New Customer | [optional] 
 **gender** | **String** | * &#x60;male&#x60; - Male * &#x60;female&#x60; - Female | [optional] 
 **name** | **String** |  | [optional] 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **phoneNumber** | **String** |  | [optional] 
 **preferredServices** | [**[Int]**](Int.md) |  | [optional] 
 **query** | **String** |  | [optional] 
 **user** | **Int** |  | [optional] 

### Return type

[**PaginatedCustomersDetailsModelList**](PaginatedCustomersDetailsModelList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersCustomersPartialUpdate**
```swift
    open class func customersCustomersPartialUpdate(id: Int, patchedCustomersDetailsModel: PatchedCustomersDetailsModel? = nil, completion: @escaping (_ data: CustomersDetailsModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this customers details model.
let patchedCustomersDetailsModel = PatchedCustomersDetailsModel(id: 123, name: "name_example", phoneNumber: "phoneNumber_example", birthDate: Date(), gender: CustomersDetailsModel_gender(), profilePhoto: "profilePhoto_example", customerType: CustomerTypeEnum(), address: "address_example", user: 123, preferredServices: [123]) // PatchedCustomersDetailsModel |  (optional)

CustomersAPI.customersCustomersPartialUpdate(id: id, patchedCustomersDetailsModel: patchedCustomersDetailsModel) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this customers details model. | 
 **patchedCustomersDetailsModel** | [**PatchedCustomersDetailsModel**](PatchedCustomersDetailsModel.md) |  | [optional] 

### Return type

[**CustomersDetailsModel**](CustomersDetailsModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersCustomersRetrieve**
```swift
    open class func customersCustomersRetrieve(id: Int, completion: @escaping (_ data: CustomersDetailsModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this customers details model.

CustomersAPI.customersCustomersRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this customers details model. | 

### Return type

[**CustomersDetailsModel**](CustomersDetailsModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersCustomersUpdate**
```swift
    open class func customersCustomersUpdate(id: Int, customersDetailsModel: CustomersDetailsModel, completion: @escaping (_ data: CustomersDetailsModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this customers details model.
let customersDetailsModel = CustomersDetailsModel(id: 123, name: "name_example", phoneNumber: "phoneNumber_example", birthDate: Date(), gender: CustomersDetailsModel_gender(), profilePhoto: "profilePhoto_example", customerType: CustomerTypeEnum(), address: "address_example", user: 123, preferredServices: [123]) // CustomersDetailsModel | 

CustomersAPI.customersCustomersUpdate(id: id, customersDetailsModel: customersDetailsModel) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this customers details model. | 
 **customersDetailsModel** | [**CustomersDetailsModel**](CustomersDetailsModel.md) |  | 

### Return type

[**CustomersDetailsModel**](CustomersDetailsModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

