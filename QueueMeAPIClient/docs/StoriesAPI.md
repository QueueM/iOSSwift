# StoriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storiesStoriesActiveStoriesRetrieve**](StoriesAPI.md#storiesstoriesactivestoriesretrieve) | **GET** /stories/stories/active_stories/ | 
[**storiesStoriesCreate**](StoriesAPI.md#storiesstoriescreate) | **POST** /stories/stories/ | 
[**storiesStoriesDestroy**](StoriesAPI.md#storiesstoriesdestroy) | **DELETE** /stories/stories/{id}/ | 
[**storiesStoriesList**](StoriesAPI.md#storiesstorieslist) | **GET** /stories/stories/ | 
[**storiesStoriesMarkViewedCreate**](StoriesAPI.md#storiesstoriesmarkviewedcreate) | **POST** /stories/stories/{id}/mark_viewed/ | 
[**storiesStoriesPartialUpdate**](StoriesAPI.md#storiesstoriespartialupdate) | **PATCH** /stories/stories/{id}/ | 
[**storiesStoriesRetrieve**](StoriesAPI.md#storiesstoriesretrieve) | **GET** /stories/stories/{id}/ | 
[**storiesStoriesUpdate**](StoriesAPI.md#storiesstoriesupdate) | **PUT** /stories/stories/{id}/ | 


# **storiesStoriesActiveStoriesRetrieve**
```swift
    open class func storiesStoriesActiveStoriesRetrieve(completion: @escaping (_ data: Story?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


StoriesAPI.storiesStoriesActiveStoriesRetrieve() { (response, error) in
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

[**Story**](Story.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storiesStoriesCreate**
```swift
    open class func storiesStoriesCreate(story: Story, completion: @escaping (_ data: Story?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let story = Story(id: 123, viewCount: 123, video: "video_example", image: "image_example", caption: "caption_example", createdAt: Date(), expiresAt: Date(), aiVideoTags: 123, analyticsData: 123, shop: 123, viewedBy: [123]) // Story | 

StoriesAPI.storiesStoriesCreate(story: story) { (response, error) in
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
 **story** | [**Story**](Story.md) |  | 

### Return type

[**Story**](Story.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storiesStoriesDestroy**
```swift
    open class func storiesStoriesDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this story model.

StoriesAPI.storiesStoriesDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this story model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storiesStoriesList**
```swift
    open class func storiesStoriesList(aiVideoTags: String? = nil, analyticsData: String? = nil, caption: String? = nil, createdAt: Date? = nil, expiresAt: Date? = nil, image: String? = nil, ordering: String? = nil, page: Int? = nil, shop: Int? = nil, video: String? = nil, viewCount: Int? = nil, viewedBy: [Int]? = nil, completion: @escaping (_ data: PaginatedStoryList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiVideoTags = "aiVideoTags_example" // String |  (optional)
let analyticsData = "analyticsData_example" // String |  (optional)
let caption = "caption_example" // String |  (optional)
let createdAt = Date() // Date |  (optional)
let expiresAt = Date() // Date |  (optional)
let image = "image_example" // String |  (optional)
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let shop = 987 // Int |  (optional)
let video = "video_example" // String |  (optional)
let viewCount = 987 // Int |  (optional)
let viewedBy = [123] // [Int] |  (optional)

StoriesAPI.storiesStoriesList(aiVideoTags: aiVideoTags, analyticsData: analyticsData, caption: caption, createdAt: createdAt, expiresAt: expiresAt, image: image, ordering: ordering, page: page, shop: shop, video: video, viewCount: viewCount, viewedBy: viewedBy) { (response, error) in
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
 **aiVideoTags** | **String** |  | [optional] 
 **analyticsData** | **String** |  | [optional] 
 **caption** | **String** |  | [optional] 
 **createdAt** | **Date** |  | [optional] 
 **expiresAt** | **Date** |  | [optional] 
 **image** | **String** |  | [optional] 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **page** | **Int** | A page number within the paginated result set. | [optional] 
 **shop** | **Int** |  | [optional] 
 **video** | **String** |  | [optional] 
 **viewCount** | **Int** |  | [optional] 
 **viewedBy** | [**[Int]**](Int.md) |  | [optional] 

### Return type

[**PaginatedStoryList**](PaginatedStoryList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storiesStoriesMarkViewedCreate**
```swift
    open class func storiesStoriesMarkViewedCreate(id: Int, story: Story, completion: @escaping (_ data: Story?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this story model.
let story = Story(id: 123, viewCount: 123, video: "video_example", image: "image_example", caption: "caption_example", createdAt: Date(), expiresAt: Date(), aiVideoTags: 123, analyticsData: 123, shop: 123, viewedBy: [123]) // Story | 

StoriesAPI.storiesStoriesMarkViewedCreate(id: id, story: story) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this story model. | 
 **story** | [**Story**](Story.md) |  | 

### Return type

[**Story**](Story.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storiesStoriesPartialUpdate**
```swift
    open class func storiesStoriesPartialUpdate(id: Int, patchedStory: PatchedStory? = nil, completion: @escaping (_ data: Story?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this story model.
let patchedStory = PatchedStory(id: 123, viewCount: 123, video: "video_example", image: "image_example", caption: "caption_example", createdAt: Date(), expiresAt: Date(), aiVideoTags: 123, analyticsData: 123, shop: 123, viewedBy: [123]) // PatchedStory |  (optional)

StoriesAPI.storiesStoriesPartialUpdate(id: id, patchedStory: patchedStory) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this story model. | 
 **patchedStory** | [**PatchedStory**](PatchedStory.md) |  | [optional] 

### Return type

[**Story**](Story.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storiesStoriesRetrieve**
```swift
    open class func storiesStoriesRetrieve(id: Int, completion: @escaping (_ data: Story?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this story model.

StoriesAPI.storiesStoriesRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this story model. | 

### Return type

[**Story**](Story.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storiesStoriesUpdate**
```swift
    open class func storiesStoriesUpdate(id: Int, story: Story, completion: @escaping (_ data: Story?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this story model.
let story = Story(id: 123, viewCount: 123, video: "video_example", image: "image_example", caption: "caption_example", createdAt: Date(), expiresAt: Date(), aiVideoTags: 123, analyticsData: 123, shop: 123, viewedBy: [123]) // Story | 

StoriesAPI.storiesStoriesUpdate(id: id, story: story) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this story model. | 
 **story** | [**Story**](Story.md) |  | 

### Return type

[**Story**](Story.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

