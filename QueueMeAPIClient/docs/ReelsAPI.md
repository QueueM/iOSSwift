# ReelsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reelsCommentsChoicesRetrieve**](ReelsAPI.md#reelscommentschoicesretrieve) | **GET** /reels/comments/choices/ | 
[**reelsCommentsCreate**](ReelsAPI.md#reelscommentscreate) | **POST** /reels/comments/ | 
[**reelsCommentsDestroy**](ReelsAPI.md#reelscommentsdestroy) | **DELETE** /reels/comments/{id}/ | 
[**reelsCommentsLikeCreate**](ReelsAPI.md#reelscommentslikecreate) | **POST** /reels/comments/{id}/like/ | 
[**reelsCommentsList**](ReelsAPI.md#reelscommentslist) | **GET** /reels/comments/ | 
[**reelsCommentsPartialUpdate**](ReelsAPI.md#reelscommentspartialupdate) | **PATCH** /reels/comments/{id}/ | 
[**reelsCommentsReplyCreate**](ReelsAPI.md#reelscommentsreplycreate) | **POST** /reels/comments/{id}/reply/ | 
[**reelsCommentsRetrieve**](ReelsAPI.md#reelscommentsretrieve) | **GET** /reels/comments/{id}/ | 
[**reelsCommentsUpdate**](ReelsAPI.md#reelscommentsupdate) | **PUT** /reels/comments/{id}/ | 
[**reelsReelsChoicesRetrieve**](ReelsAPI.md#reelsreelschoicesretrieve) | **GET** /reels/reels/choices/ | 
[**reelsReelsCreate**](ReelsAPI.md#reelsreelscreate) | **POST** /reels/reels/ | 
[**reelsReelsDestroy**](ReelsAPI.md#reelsreelsdestroy) | **DELETE** /reels/reels/{id}/ | 
[**reelsReelsIncrementViewCreate**](ReelsAPI.md#reelsreelsincrementviewcreate) | **POST** /reels/reels/{id}/increment_view/ | 
[**reelsReelsLikeCreate**](ReelsAPI.md#reelsreelslikecreate) | **POST** /reels/reels/{id}/like/ | 
[**reelsReelsList**](ReelsAPI.md#reelsreelslist) | **GET** /reels/reels/ | 
[**reelsReelsPartialUpdate**](ReelsAPI.md#reelsreelspartialupdate) | **PATCH** /reels/reels/{id}/ | 
[**reelsReelsRetrieve**](ReelsAPI.md#reelsreelsretrieve) | **GET** /reels/reels/{id}/ | 
[**reelsReelsUpdate**](ReelsAPI.md#reelsreelsupdate) | **PUT** /reels/reels/{id}/ | 


# **reelsCommentsChoicesRetrieve**
```swift
    open class func reelsCommentsChoicesRetrieve(completion: @escaping (_ data: Comment?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ReelsAPI.reelsCommentsChoicesRetrieve() { (response, error) in
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

[**Comment**](Comment.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsCommentsCreate**
```swift
    open class func reelsCommentsCreate(comment: Comment, completion: @escaping (_ data: Comment?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let comment = Comment(id: 123, user: "user_example", reel: 123, text: "text_example", createdAt: Date(), likeCount: 123, parent: 123, replies: "TODO") // Comment | 

ReelsAPI.reelsCommentsCreate(comment: comment) { (response, error) in
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
 **comment** | [**Comment**](Comment.md) |  | 

### Return type

[**Comment**](Comment.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsCommentsDestroy**
```swift
    open class func reelsCommentsDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this comments model.

ReelsAPI.reelsCommentsDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this comments model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsCommentsLikeCreate**
```swift
    open class func reelsCommentsLikeCreate(id: Int, comment: Comment, completion: @escaping (_ data: Comment?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this comments model.
let comment = Comment(id: 123, user: "user_example", reel: 123, text: "text_example", createdAt: Date(), likeCount: 123, parent: 123, replies: "TODO") // Comment | 

ReelsAPI.reelsCommentsLikeCreate(id: id, comment: comment) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this comments model. | 
 **comment** | [**Comment**](Comment.md) |  | 

### Return type

[**Comment**](Comment.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsCommentsList**
```swift
    open class func reelsCommentsList(createdAtAfter: Date? = nil, createdAtBefore: Date? = nil, ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, reel: Int? = nil, user: Int? = nil, completion: @escaping (_ data: PaginatedCommentList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createdAtAfter = Date() // Date |  (optional)
let createdAtBefore = Date() // Date |  (optional)
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)
let reel = 987 // Int |  (optional)
let user = 987 // Int |  (optional)

ReelsAPI.reelsCommentsList(createdAtAfter: createdAtAfter, createdAtBefore: createdAtBefore, ordering: ordering, page: page, pageSize: pageSize, reel: reel, user: user) { (response, error) in
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
 **createdAtAfter** | **Date** |  | [optional] 
 **createdAtBefore** | **Date** |  | [optional] 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 
 **reel** | **Int** |  | [optional] 
 **user** | **Int** |  | [optional] 

### Return type

[**PaginatedCommentList**](PaginatedCommentList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsCommentsPartialUpdate**
```swift
    open class func reelsCommentsPartialUpdate(id: Int, patchedComment: PatchedComment? = nil, completion: @escaping (_ data: Comment?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this comments model.
let patchedComment = PatchedComment(id: 123, user: "user_example", reel: 123, text: "text_example", createdAt: Date(), likeCount: 123, parent: 123, replies: "TODO") // PatchedComment |  (optional)

ReelsAPI.reelsCommentsPartialUpdate(id: id, patchedComment: patchedComment) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this comments model. | 
 **patchedComment** | [**PatchedComment**](PatchedComment.md) |  | [optional] 

### Return type

[**Comment**](Comment.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsCommentsReplyCreate**
```swift
    open class func reelsCommentsReplyCreate(id: Int, comment: Comment, completion: @escaping (_ data: Comment?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this comments model.
let comment = Comment(id: 123, user: "user_example", reel: 123, text: "text_example", createdAt: Date(), likeCount: 123, parent: 123, replies: "TODO") // Comment | 

ReelsAPI.reelsCommentsReplyCreate(id: id, comment: comment) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this comments model. | 
 **comment** | [**Comment**](Comment.md) |  | 

### Return type

[**Comment**](Comment.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsCommentsRetrieve**
```swift
    open class func reelsCommentsRetrieve(id: Int, completion: @escaping (_ data: Comment?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this comments model.

ReelsAPI.reelsCommentsRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this comments model. | 

### Return type

[**Comment**](Comment.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsCommentsUpdate**
```swift
    open class func reelsCommentsUpdate(id: Int, comment: Comment, completion: @escaping (_ data: Comment?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this comments model.
let comment = Comment(id: 123, user: "user_example", reel: 123, text: "text_example", createdAt: Date(), likeCount: 123, parent: 123, replies: "TODO") // Comment | 

ReelsAPI.reelsCommentsUpdate(id: id, comment: comment) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this comments model. | 
 **comment** | [**Comment**](Comment.md) |  | 

### Return type

[**Comment**](Comment.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsReelsChoicesRetrieve**
```swift
    open class func reelsReelsChoicesRetrieve(completion: @escaping (_ data: Reel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ReelsAPI.reelsReelsChoicesRetrieve() { (response, error) in
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

[**Reel**](Reel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsReelsCreate**
```swift
    open class func reelsReelsCreate(reel: Reel, completion: @escaping (_ data: Reel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let reel = Reel(id: 123, shop: 123, video: "video_example", videoUrl: "videoUrl_example", thumbnail: "thumbnail_example", thumbnailUrl: "thumbnailUrl_example", caption: "caption_example", createdAt: Date(), likeCount: 123, viewCount: 123, shareCount: 123, saveCount: 123, aiVideoTags: 123, processedVideoUrl: "processedVideoUrl_example", analyticsData: 123) // Reel | 

ReelsAPI.reelsReelsCreate(reel: reel) { (response, error) in
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
 **reel** | [**Reel**](Reel.md) |  | 

### Return type

[**Reel**](Reel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsReelsDestroy**
```swift
    open class func reelsReelsDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this reels model.

ReelsAPI.reelsReelsDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this reels model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsReelsIncrementViewCreate**
```swift
    open class func reelsReelsIncrementViewCreate(id: Int, reel: Reel, completion: @escaping (_ data: Reel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this reels model.
let reel = Reel(id: 123, shop: 123, video: "video_example", videoUrl: "videoUrl_example", thumbnail: "thumbnail_example", thumbnailUrl: "thumbnailUrl_example", caption: "caption_example", createdAt: Date(), likeCount: 123, viewCount: 123, shareCount: 123, saveCount: 123, aiVideoTags: 123, processedVideoUrl: "processedVideoUrl_example", analyticsData: 123) // Reel | 

ReelsAPI.reelsReelsIncrementViewCreate(id: id, reel: reel) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this reels model. | 
 **reel** | [**Reel**](Reel.md) |  | 

### Return type

[**Reel**](Reel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsReelsLikeCreate**
```swift
    open class func reelsReelsLikeCreate(id: Int, reel: Reel, completion: @escaping (_ data: Reel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this reels model.
let reel = Reel(id: 123, shop: 123, video: "video_example", videoUrl: "videoUrl_example", thumbnail: "thumbnail_example", thumbnailUrl: "thumbnailUrl_example", caption: "caption_example", createdAt: Date(), likeCount: 123, viewCount: 123, shareCount: 123, saveCount: 123, aiVideoTags: 123, processedVideoUrl: "processedVideoUrl_example", analyticsData: 123) // Reel | 

ReelsAPI.reelsReelsLikeCreate(id: id, reel: reel) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this reels model. | 
 **reel** | [**Reel**](Reel.md) |  | 

### Return type

[**Reel**](Reel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsReelsList**
```swift
    open class func reelsReelsList(createdAtAfter: Date? = nil, createdAtBefore: Date? = nil, ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, shop: Int? = nil, viewCountGte: Int? = nil, viewCountLte: Int? = nil, completion: @escaping (_ data: PaginatedReelList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createdAtAfter = Date() // Date |  (optional)
let createdAtBefore = Date() // Date |  (optional)
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)
let shop = 987 // Int |  (optional)
let viewCountGte = 987 // Int |  (optional)
let viewCountLte = 987 // Int |  (optional)

ReelsAPI.reelsReelsList(createdAtAfter: createdAtAfter, createdAtBefore: createdAtBefore, ordering: ordering, page: page, pageSize: pageSize, shop: shop, viewCountGte: viewCountGte, viewCountLte: viewCountLte) { (response, error) in
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
 **createdAtAfter** | **Date** |  | [optional] 
 **createdAtBefore** | **Date** |  | [optional] 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **pageSize** | **Int** | Number of results to return per page. | [optional] 
 **shop** | **Int** |  | [optional] 
 **viewCountGte** | **Int** |  | [optional] 
 **viewCountLte** | **Int** |  | [optional] 

### Return type

[**PaginatedReelList**](PaginatedReelList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsReelsPartialUpdate**
```swift
    open class func reelsReelsPartialUpdate(id: Int, patchedReel: PatchedReel? = nil, completion: @escaping (_ data: Reel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this reels model.
let patchedReel = PatchedReel(id: 123, shop: 123, video: "video_example", videoUrl: "videoUrl_example", thumbnail: "thumbnail_example", thumbnailUrl: "thumbnailUrl_example", caption: "caption_example", createdAt: Date(), likeCount: 123, viewCount: 123, shareCount: 123, saveCount: 123, aiVideoTags: 123, processedVideoUrl: "processedVideoUrl_example", analyticsData: 123) // PatchedReel |  (optional)

ReelsAPI.reelsReelsPartialUpdate(id: id, patchedReel: patchedReel) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this reels model. | 
 **patchedReel** | [**PatchedReel**](PatchedReel.md) |  | [optional] 

### Return type

[**Reel**](Reel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsReelsRetrieve**
```swift
    open class func reelsReelsRetrieve(id: Int, completion: @escaping (_ data: Reel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this reels model.

ReelsAPI.reelsReelsRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this reels model. | 

### Return type

[**Reel**](Reel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reelsReelsUpdate**
```swift
    open class func reelsReelsUpdate(id: Int, reel: Reel, completion: @escaping (_ data: Reel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this reels model.
let reel = Reel(id: 123, shop: 123, video: "video_example", videoUrl: "videoUrl_example", thumbnail: "thumbnail_example", thumbnailUrl: "thumbnailUrl_example", caption: "caption_example", createdAt: Date(), likeCount: 123, viewCount: 123, shareCount: 123, saveCount: 123, aiVideoTags: 123, processedVideoUrl: "processedVideoUrl_example", analyticsData: 123) // Reel | 

ReelsAPI.reelsReelsUpdate(id: id, reel: reel) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this reels model. | 
 **reel** | [**Reel**](Reel.md) |  | 

### Return type

[**Reel**](Reel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

