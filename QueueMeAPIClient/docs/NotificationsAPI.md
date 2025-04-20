# NotificationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationsNotificationsChoicesRetrieve**](NotificationsAPI.md#notificationsnotificationschoicesretrieve) | **GET** /notifications/notifications/choices/ | 
[**notificationsNotificationsCreate**](NotificationsAPI.md#notificationsnotificationscreate) | **POST** /notifications/notifications/ | 
[**notificationsNotificationsDestroy**](NotificationsAPI.md#notificationsnotificationsdestroy) | **DELETE** /notifications/notifications/{id}/ | 
[**notificationsNotificationsList**](NotificationsAPI.md#notificationsnotificationslist) | **GET** /notifications/notifications/ | 
[**notificationsNotificationsPartialUpdate**](NotificationsAPI.md#notificationsnotificationspartialupdate) | **PATCH** /notifications/notifications/{id}/ | 
[**notificationsNotificationsRetrieve**](NotificationsAPI.md#notificationsnotificationsretrieve) | **GET** /notifications/notifications/{id}/ | 
[**notificationsNotificationsUpdate**](NotificationsAPI.md#notificationsnotificationsupdate) | **PUT** /notifications/notifications/{id}/ | 


# **notificationsNotificationsChoicesRetrieve**
```swift
    open class func notificationsNotificationsChoicesRetrieve(completion: @escaping (_ data: Notifications?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


NotificationsAPI.notificationsNotificationsChoicesRetrieve() { (response, error) in
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

[**Notifications**](Notifications.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsNotificationsCreate**
```swift
    open class func notificationsNotificationsCreate(notifications: Notifications, completion: @escaping (_ data: Notifications?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let notifications = Notifications(id: 123, title: "title_example", message: "message_example", createdAt: Date(), isRead: false, user: 123) // Notifications | 

NotificationsAPI.notificationsNotificationsCreate(notifications: notifications) { (response, error) in
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
 **notifications** | [**Notifications**](Notifications.md) |  | 

### Return type

[**Notifications**](Notifications.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsNotificationsDestroy**
```swift
    open class func notificationsNotificationsDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this notification model.

NotificationsAPI.notificationsNotificationsDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this notification model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsNotificationsList**
```swift
    open class func notificationsNotificationsList(createdAt: Date? = nil, isRead: Bool? = nil, message: String? = nil, ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, query: String? = nil, title: String? = nil, user: Int? = nil, completion: @escaping (_ data: PaginatedNotificationsList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createdAt = Date() // Date |  (optional)
let isRead = true // Bool |  (optional)
let message = "message_example" // String |  (optional)
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)
let query = "query_example" // String |  (optional)
let title = "title_example" // String |  (optional)
let user = 987 // Int |  (optional)

NotificationsAPI.notificationsNotificationsList(createdAt: createdAt, isRead: isRead, message: message, ordering: ordering, page: page, pageSize: pageSize, query: query, title: title, user: user) { (response, error) in
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
 **createdAt** | **Date** |  | [optional] 
 **isRead** | **Bool** |  | [optional] 
 **message** | **String** |  | [optional] 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 
 **query** | **String** |  | [optional] 
 **title** | **String** |  | [optional] 
 **user** | **Int** |  | [optional] 

### Return type

[**PaginatedNotificationsList**](PaginatedNotificationsList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsNotificationsPartialUpdate**
```swift
    open class func notificationsNotificationsPartialUpdate(id: Int, patchedNotifications: PatchedNotifications? = nil, completion: @escaping (_ data: Notifications?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this notification model.
let patchedNotifications = PatchedNotifications(id: 123, title: "title_example", message: "message_example", createdAt: Date(), isRead: false, user: 123) // PatchedNotifications |  (optional)

NotificationsAPI.notificationsNotificationsPartialUpdate(id: id, patchedNotifications: patchedNotifications) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this notification model. | 
 **patchedNotifications** | [**PatchedNotifications**](PatchedNotifications.md) |  | [optional] 

### Return type

[**Notifications**](Notifications.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsNotificationsRetrieve**
```swift
    open class func notificationsNotificationsRetrieve(id: Int, completion: @escaping (_ data: Notifications?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this notification model.

NotificationsAPI.notificationsNotificationsRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this notification model. | 

### Return type

[**Notifications**](Notifications.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsNotificationsUpdate**
```swift
    open class func notificationsNotificationsUpdate(id: Int, notifications: Notifications, completion: @escaping (_ data: Notifications?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this notification model.
let notifications = Notifications(id: 123, title: "title_example", message: "message_example", createdAt: Date(), isRead: false, user: 123) // Notifications | 

NotificationsAPI.notificationsNotificationsUpdate(id: id, notifications: notifications) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this notification model. | 
 **notifications** | [**Notifications**](Notifications.md) |  | 

### Return type

[**Notifications**](Notifications.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

