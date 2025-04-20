# ReviewsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reviewsReviewsCreate**](ReviewsAPI.md#reviewsreviewscreate) | **POST** /reviews/reviews/ | 
[**reviewsReviewsList**](ReviewsAPI.md#reviewsreviewslist) | **GET** /reviews/reviews/ | 


# **reviewsReviewsCreate**
```swift
    open class func reviewsReviewsCreate(review: Review, completion: @escaping (_ data: Review?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let review = Review(id: 123, user: 123, title: "title_example", rating: 123, comment: "comment_example", createdAt: Date(), contentType: "contentType_example", objectId: 123, sentimentScore: 123) // Review | 

ReviewsAPI.reviewsReviewsCreate(review: review) { (response, error) in
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
 **review** | [**Review**](Review.md) |  | 

### Return type

[**Review**](Review.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewsReviewsList**
```swift
    open class func reviewsReviewsList(page: Int? = nil, completion: @escaping (_ data: PaginatedReviewList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | A page number within the paginated result set. (optional)

ReviewsAPI.reviewsReviewsList(page: page) { (response, error) in
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

[**PaginatedReviewList**](PaginatedReviewList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

