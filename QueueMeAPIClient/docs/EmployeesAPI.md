# EmployeesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**employeesEmployeesChoicesRetrieve**](EmployeesAPI.md#employeesemployeeschoicesretrieve) | **GET** /employees/employees/choices/ | 
[**employeesEmployeesCreate**](EmployeesAPI.md#employeesemployeescreate) | **POST** /employees/employees/ | 
[**employeesEmployeesDestroy**](EmployeesAPI.md#employeesemployeesdestroy) | **DELETE** /employees/employees/{id}/ | 
[**employeesEmployeesList**](EmployeesAPI.md#employeesemployeeslist) | **GET** /employees/employees/ | 
[**employeesEmployeesPartialUpdate**](EmployeesAPI.md#employeesemployeespartialupdate) | **PATCH** /employees/employees/{id}/ | 
[**employeesEmployeesRetrieve**](EmployeesAPI.md#employeesemployeesretrieve) | **GET** /employees/employees/{id}/ | 
[**employeesEmployeesRolesChoicesRetrieve**](EmployeesAPI.md#employeesemployeesroleschoicesretrieve) | **GET** /employees/employees-roles/choices/ | 
[**employeesEmployeesRolesCreate**](EmployeesAPI.md#employeesemployeesrolescreate) | **POST** /employees/employees-roles/ | 
[**employeesEmployeesRolesDestroy**](EmployeesAPI.md#employeesemployeesrolesdestroy) | **DELETE** /employees/employees-roles/{id}/ | 
[**employeesEmployeesRolesList**](EmployeesAPI.md#employeesemployeesroleslist) | **GET** /employees/employees-roles/ | 
[**employeesEmployeesRolesPartialUpdate**](EmployeesAPI.md#employeesemployeesrolespartialupdate) | **PATCH** /employees/employees-roles/{id}/ | 
[**employeesEmployeesRolesRetrieve**](EmployeesAPI.md#employeesemployeesrolesretrieve) | **GET** /employees/employees-roles/{id}/ | 
[**employeesEmployeesRolesUpdate**](EmployeesAPI.md#employeesemployeesrolesupdate) | **PUT** /employees/employees-roles/{id}/ | 
[**employeesEmployeesUpdate**](EmployeesAPI.md#employeesemployeesupdate) | **PUT** /employees/employees/{id}/ | 


# **employeesEmployeesChoicesRetrieve**
```swift
    open class func employeesEmployeesChoicesRetrieve(completion: @escaping (_ data: EmployeeDetails?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


EmployeesAPI.employeesEmployeesChoicesRetrieve() { (response, error) in
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

[**EmployeeDetails**](EmployeeDetails.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesCreate**
```swift
    open class func employeesEmployeesCreate(employeeDetails: EmployeeDetails, completion: @escaping (_ data: EmployeeDetails?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let employeeDetails = EmployeeDetails(id: 123, workingHours: [EmployeeWorkingHours(id: 123, day: "day_example", startTime: "startTime_example", endTime: "endTime_example")], roles: "TODO", name: "name_example", position: "position_example", salary: 123, aiPerformanceData: 123, createdAt: Date(), user: 123, company: 123, shop: 123) // EmployeeDetails | 

EmployeesAPI.employeesEmployeesCreate(employeeDetails: employeeDetails) { (response, error) in
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
 **employeeDetails** | [**EmployeeDetails**](EmployeeDetails.md) |  | 

### Return type

[**EmployeeDetails**](EmployeeDetails.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesDestroy**
```swift
    open class func employeesEmployeesDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this employee details model.

EmployeesAPI.employeesEmployeesDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this employee details model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesList**
```swift
    open class func employeesEmployeesList(ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedEmployeeDetailsList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

EmployeesAPI.employeesEmployeesList(ordering: ordering, page: page, pageSize: pageSize) { (response, error) in
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
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**PaginatedEmployeeDetailsList**](PaginatedEmployeeDetailsList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesPartialUpdate**
```swift
    open class func employeesEmployeesPartialUpdate(id: Int, patchedEmployeeDetails: PatchedEmployeeDetails? = nil, completion: @escaping (_ data: EmployeeDetails?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this employee details model.
let patchedEmployeeDetails = PatchedEmployeeDetails(id: 123, workingHours: [EmployeeWorkingHours(id: 123, day: "day_example", startTime: "startTime_example", endTime: "endTime_example")], roles: "TODO", name: "name_example", position: "position_example", salary: 123, aiPerformanceData: 123, createdAt: Date(), user: 123, company: 123, shop: 123) // PatchedEmployeeDetails |  (optional)

EmployeesAPI.employeesEmployeesPartialUpdate(id: id, patchedEmployeeDetails: patchedEmployeeDetails) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this employee details model. | 
 **patchedEmployeeDetails** | [**PatchedEmployeeDetails**](PatchedEmployeeDetails.md) |  | [optional] 

### Return type

[**EmployeeDetails**](EmployeeDetails.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesRetrieve**
```swift
    open class func employeesEmployeesRetrieve(id: Int, completion: @escaping (_ data: EmployeeDetails?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this employee details model.

EmployeesAPI.employeesEmployeesRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this employee details model. | 

### Return type

[**EmployeeDetails**](EmployeeDetails.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesRolesChoicesRetrieve**
```swift
    open class func employeesEmployeesRolesChoicesRetrieve(completion: @escaping (_ data: EmployeeRole?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


EmployeesAPI.employeesEmployeesRolesChoicesRetrieve() { (response, error) in
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

[**EmployeeRole**](EmployeeRole.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesRolesCreate**
```swift
    open class func employeesEmployeesRolesCreate(employeeRole: EmployeeRole, completion: @escaping (_ data: EmployeeRole?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let employeeRole = EmployeeRole(id: 123, role: "role_example", permissions: 123, employee: 123, shop: 123) // EmployeeRole | 

EmployeesAPI.employeesEmployeesRolesCreate(employeeRole: employeeRole) { (response, error) in
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
 **employeeRole** | [**EmployeeRole**](EmployeeRole.md) |  | 

### Return type

[**EmployeeRole**](EmployeeRole.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesRolesDestroy**
```swift
    open class func employeesEmployeesRolesDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this employee role manangement model.

EmployeesAPI.employeesEmployeesRolesDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this employee role manangement model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesRolesList**
```swift
    open class func employeesEmployeesRolesList(ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedEmployeeRoleList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

EmployeesAPI.employeesEmployeesRolesList(ordering: ordering, page: page, pageSize: pageSize) { (response, error) in
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
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 

### Return type

[**PaginatedEmployeeRoleList**](PaginatedEmployeeRoleList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesRolesPartialUpdate**
```swift
    open class func employeesEmployeesRolesPartialUpdate(id: Int, patchedEmployeeRole: PatchedEmployeeRole? = nil, completion: @escaping (_ data: EmployeeRole?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this employee role manangement model.
let patchedEmployeeRole = PatchedEmployeeRole(id: 123, role: "role_example", permissions: 123, employee: 123, shop: 123) // PatchedEmployeeRole |  (optional)

EmployeesAPI.employeesEmployeesRolesPartialUpdate(id: id, patchedEmployeeRole: patchedEmployeeRole) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this employee role manangement model. | 
 **patchedEmployeeRole** | [**PatchedEmployeeRole**](PatchedEmployeeRole.md) |  | [optional] 

### Return type

[**EmployeeRole**](EmployeeRole.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesRolesRetrieve**
```swift
    open class func employeesEmployeesRolesRetrieve(id: Int, completion: @escaping (_ data: EmployeeRole?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this employee role manangement model.

EmployeesAPI.employeesEmployeesRolesRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this employee role manangement model. | 

### Return type

[**EmployeeRole**](EmployeeRole.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesRolesUpdate**
```swift
    open class func employeesEmployeesRolesUpdate(id: Int, employeeRole: EmployeeRole, completion: @escaping (_ data: EmployeeRole?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this employee role manangement model.
let employeeRole = EmployeeRole(id: 123, role: "role_example", permissions: 123, employee: 123, shop: 123) // EmployeeRole | 

EmployeesAPI.employeesEmployeesRolesUpdate(id: id, employeeRole: employeeRole) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this employee role manangement model. | 
 **employeeRole** | [**EmployeeRole**](EmployeeRole.md) |  | 

### Return type

[**EmployeeRole**](EmployeeRole.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeesEmployeesUpdate**
```swift
    open class func employeesEmployeesUpdate(id: Int, employeeDetails: EmployeeDetails, completion: @escaping (_ data: EmployeeDetails?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this employee details model.
let employeeDetails = EmployeeDetails(id: 123, workingHours: [EmployeeWorkingHours(id: 123, day: "day_example", startTime: "startTime_example", endTime: "endTime_example")], roles: "TODO", name: "name_example", position: "position_example", salary: 123, aiPerformanceData: 123, createdAt: Date(), user: 123, company: 123, shop: 123) // EmployeeDetails | 

EmployeesAPI.employeesEmployeesUpdate(id: id, employeeDetails: employeeDetails) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this employee details model. | 
 **employeeDetails** | [**EmployeeDetails**](EmployeeDetails.md) |  | 

### Return type

[**EmployeeDetails**](EmployeeDetails.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

