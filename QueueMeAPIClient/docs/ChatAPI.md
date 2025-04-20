# ChatAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatHistoryChoicesRetrieve**](ChatAPI.md#chathistorychoicesretrieve) | **GET** /chat/history/choices/ | 
[**chatHistoryCreate**](ChatAPI.md#chathistorycreate) | **POST** /chat/history/ | 
[**chatHistoryDestroy**](ChatAPI.md#chathistorydestroy) | **DELETE** /chat/history/{id}/ | 
[**chatHistoryList**](ChatAPI.md#chathistorylist) | **GET** /chat/history/ | 
[**chatHistoryPartialUpdate**](ChatAPI.md#chathistorypartialupdate) | **PATCH** /chat/history/{id}/ | 
[**chatHistoryRetrieve**](ChatAPI.md#chathistoryretrieve) | **GET** /chat/history/{id}/ | 
[**chatHistoryUpdate**](ChatAPI.md#chathistoryupdate) | **PUT** /chat/history/{id}/ | 
[**chatRoomsChoicesRetrieve**](ChatAPI.md#chatroomschoicesretrieve) | **GET** /chat/rooms/choices/ | 
[**chatRoomsCreate**](ChatAPI.md#chatroomscreate) | **POST** /chat/rooms/ | 
[**chatRoomsDestroy**](ChatAPI.md#chatroomsdestroy) | **DELETE** /chat/rooms/{id}/ | 
[**chatRoomsList**](ChatAPI.md#chatroomslist) | **GET** /chat/rooms/ | 
[**chatRoomsPartialUpdate**](ChatAPI.md#chatroomspartialupdate) | **PATCH** /chat/rooms/{id}/ | 
[**chatRoomsRetrieve**](ChatAPI.md#chatroomsretrieve) | **GET** /chat/rooms/{id}/ | 
[**chatRoomsUpdate**](ChatAPI.md#chatroomsupdate) | **PUT** /chat/rooms/{id}/ | 


# **chatHistoryChoicesRetrieve**
```swift
    open class func chatHistoryChoicesRetrieve(completion: @escaping (_ data: ChatHistory?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat history entries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ChatAPI.chatHistoryChoicesRetrieve() { (response, error) in
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

[**ChatHistory**](ChatHistory.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatHistoryCreate**
```swift
    open class func chatHistoryCreate(chatHistory: ChatHistory, completion: @escaping (_ data: ChatHistory?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat history entries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let chatHistory = ChatHistory(id: 123, botResponse: "botResponse_example", sentBy: 123, message: "message_example", createdAt: Date(), room: 123) // ChatHistory | 

ChatAPI.chatHistoryCreate(chatHistory: chatHistory) { (response, error) in
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
 **chatHistory** | [**ChatHistory**](ChatHistory.md) |  | 

### Return type

[**ChatHistory**](ChatHistory.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatHistoryDestroy**
```swift
    open class func chatHistoryDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat history entries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this chat history model.

ChatAPI.chatHistoryDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this chat history model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatHistoryList**
```swift
    open class func chatHistoryList(createdAt: Date? = nil, message: String? = nil, ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, room: Int? = nil, sentBy: Int? = nil, completion: @escaping (_ data: PaginatedChatHistoryList?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat history entries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createdAt = Date() // Date |  (optional)
let message = "message_example" // String |  (optional)
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)
let room = 987 // Int |  (optional)
let sentBy = 987 // Int |  (optional)

ChatAPI.chatHistoryList(createdAt: createdAt, message: message, ordering: ordering, page: page, pageSize: pageSize, room: room, sentBy: sentBy) { (response, error) in
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
 **message** | **String** |  | [optional] 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 
 **room** | **Int** |  | [optional] 
 **sentBy** | **Int** |  | [optional] 

### Return type

[**PaginatedChatHistoryList**](PaginatedChatHistoryList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatHistoryPartialUpdate**
```swift
    open class func chatHistoryPartialUpdate(id: Int, patchedChatHistory: PatchedChatHistory? = nil, completion: @escaping (_ data: ChatHistory?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat history entries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this chat history model.
let patchedChatHistory = PatchedChatHistory(id: 123, botResponse: "botResponse_example", sentBy: 123, message: "message_example", createdAt: Date(), room: 123) // PatchedChatHistory |  (optional)

ChatAPI.chatHistoryPartialUpdate(id: id, patchedChatHistory: patchedChatHistory) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this chat history model. | 
 **patchedChatHistory** | [**PatchedChatHistory**](PatchedChatHistory.md) |  | [optional] 

### Return type

[**ChatHistory**](ChatHistory.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatHistoryRetrieve**
```swift
    open class func chatHistoryRetrieve(id: Int, completion: @escaping (_ data: ChatHistory?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat history entries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this chat history model.

ChatAPI.chatHistoryRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this chat history model. | 

### Return type

[**ChatHistory**](ChatHistory.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatHistoryUpdate**
```swift
    open class func chatHistoryUpdate(id: Int, chatHistory: ChatHistory, completion: @escaping (_ data: ChatHistory?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat history entries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this chat history model.
let chatHistory = ChatHistory(id: 123, botResponse: "botResponse_example", sentBy: 123, message: "message_example", createdAt: Date(), room: 123) // ChatHistory | 

ChatAPI.chatHistoryUpdate(id: id, chatHistory: chatHistory) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this chat history model. | 
 **chatHistory** | [**ChatHistory**](ChatHistory.md) |  | 

### Return type

[**ChatHistory**](ChatHistory.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsChoicesRetrieve**
```swift
    open class func chatRoomsChoicesRetrieve(completion: @escaping (_ data: ChatRoom?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ChatAPI.chatRoomsChoicesRetrieve() { (response, error) in
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

[**ChatRoom**](ChatRoom.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsCreate**
```swift
    open class func chatRoomsCreate(chatRoom: ChatRoom, completion: @escaping (_ data: ChatRoom?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let chatRoom = ChatRoom(id: 123, user: 123, shop: 123) // ChatRoom | 

ChatAPI.chatRoomsCreate(chatRoom: chatRoom) { (response, error) in
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
 **chatRoom** | [**ChatRoom**](ChatRoom.md) |  | 

### Return type

[**ChatRoom**](ChatRoom.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsDestroy**
```swift
    open class func chatRoomsDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this chat room model.

ChatAPI.chatRoomsDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this chat room model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsList**
```swift
    open class func chatRoomsList(ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, shop: Int? = nil, user: Int? = nil, completion: @escaping (_ data: PaginatedChatRoomList?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)
let shop = 987 // Int |  (optional)
let user = 987 // Int |  (optional)

ChatAPI.chatRoomsList(ordering: ordering, page: page, pageSize: pageSize, shop: shop, user: user) { (response, error) in
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
 **shop** | **Int** |  | [optional] 
 **user** | **Int** |  | [optional] 

### Return type

[**PaginatedChatRoomList**](PaginatedChatRoomList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsPartialUpdate**
```swift
    open class func chatRoomsPartialUpdate(id: Int, patchedChatRoom: PatchedChatRoom? = nil, completion: @escaping (_ data: ChatRoom?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this chat room model.
let patchedChatRoom = PatchedChatRoom(id: 123, user: 123, shop: 123) // PatchedChatRoom |  (optional)

ChatAPI.chatRoomsPartialUpdate(id: id, patchedChatRoom: patchedChatRoom) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this chat room model. | 
 **patchedChatRoom** | [**PatchedChatRoom**](PatchedChatRoom.md) |  | [optional] 

### Return type

[**ChatRoom**](ChatRoom.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsRetrieve**
```swift
    open class func chatRoomsRetrieve(id: Int, completion: @escaping (_ data: ChatRoom?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this chat room model.

ChatAPI.chatRoomsRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this chat room model. | 

### Return type

[**ChatRoom**](ChatRoom.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUpdate**
```swift
    open class func chatRoomsUpdate(id: Int, chatRoom: ChatRoom, completion: @escaping (_ data: ChatRoom?, _ error: Error?) -> Void)
```



ViewSet for listing and managing chat rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this chat room model.
let chatRoom = ChatRoom(id: 123, user: 123, shop: 123) // ChatRoom | 

ChatAPI.chatRoomsUpdate(id: id, chatRoom: chatRoom) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this chat room model. | 
 **chatRoom** | [**ChatRoom**](ChatRoom.md) |  | 

### Return type

[**ChatRoom**](ChatRoom.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

