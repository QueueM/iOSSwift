# DashboardAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dashboardDashboardLogsList**](DashboardAPI.md#dashboarddashboardlogslist) | **GET** /dashboard/dashboard-logs/ | 
[**dashboardDashboardLogsRetrieve**](DashboardAPI.md#dashboarddashboardlogsretrieve) | **GET** /dashboard/dashboard-logs/{id}/ | 
[**dashboardDashboardLogsTrendsRetrieve**](DashboardAPI.md#dashboarddashboardlogstrendsretrieve) | **GET** /dashboard/dashboard-logs/trends/ | 


# **dashboardDashboardLogsList**
```swift
    open class func dashboardDashboardLogsList(page: Int? = nil, completion: @escaping (_ data: PaginatedDashboardLogList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | A page number within the paginated result set. (optional)

DashboardAPI.dashboardDashboardLogsList(page: page) { (response, error) in
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
 **page** | **Int** | A page number within the paginated result set. | [optional] 

### Return type

[**PaginatedDashboardLogList**](PaginatedDashboardLogList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardDashboardLogsRetrieve**
```swift
    open class func dashboardDashboardLogsRetrieve(id: Int, completion: @escaping (_ data: DashboardLog?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this dashboard log.

DashboardAPI.dashboardDashboardLogsRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this dashboard log. | 

### Return type

[**DashboardLog**](DashboardLog.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardDashboardLogsTrendsRetrieve**
```swift
    open class func dashboardDashboardLogsTrendsRetrieve(completion: @escaping (_ data: DashboardLog?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DashboardAPI.dashboardDashboardLogsTrendsRetrieve() { (response, error) in
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

[**DashboardLog**](DashboardLog.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

