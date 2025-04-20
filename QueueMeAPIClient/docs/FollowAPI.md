# FollowAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**followFeedRetrieve**](FollowAPI.md#followfeedretrieve) | **GET** /follow/feed/ | 
[**followFollowsCreate**](FollowAPI.md#followfollowscreate) | **POST** /follow/follows/ | 
[**followFollowsDestroy**](FollowAPI.md#followfollowsdestroy) | **DELETE** /follow/follows/{id}/ | 
[**followFollowsList**](FollowAPI.md#followfollowslist) | **GET** /follow/follows/ | 
[**followFollowsPartialUpdate**](FollowAPI.md#followfollowspartialupdate) | **PATCH** /follow/follows/{id}/ | 
[**followFollowsRetrieve**](FollowAPI.md#followfollowsretrieve) | **GET** /follow/follows/{id}/ | 
[**followFollowsUpdate**](FollowAPI.md#followfollowsupdate) | **PUT** /follow/follows/{id}/ | 


# **followFeedRetrieve**
```swift
    open class func followFeedRetrieve(completion: @escaping (_ data: FeedItem?, _ error: Error?) -> Void)
```



GET /follow/feed/ → aggregated feed of reels, stories, services, discounts & notifications

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FollowAPI.followFeedRetrieve() { (response, error) in
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

[**FeedItem**](FeedItem.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followFollowsCreate**
```swift
    open class func followFollowsCreate(shopFollow: ShopFollow, completion: @escaping (_ data: ShopFollow?, _ error: Error?) -> Void)
```



followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let shopFollow = ShopFollow(id: 123, shop: ShopDetailsModel(id: 123, employeeCount: 123, name: "name_example", description: "description_example", note: "note_example", customerServicePhone: "customerServicePhone_example", address: "address_example", latitude: 123, longitude: 123, coverImage: "coverImage_example", avatarImage: "avatarImage_example", username: "username_example", shopName: "shopName_example", country: "country_example", city: "city_example", district: "district_example", customersType: CustomersTypeEnum(), servicesTypes: ServicesTypesEnum(), onlinePaymentRequested: false, bankDetailsDocument: "bankDetailsDocument_example", onlinePaymentStatus: OnlinePaymentStatusEnum(), aiRecommendations: 123, aiPersonalization: 123, createdAt: Date(), managerPhoneNumber: "managerPhoneNumber_example", owner: 123, company: 123), shopId: 123, createdAt: Date()) // ShopFollow | 

FollowAPI.followFollowsCreate(shopFollow: shopFollow) { (response, error) in
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
 **shopFollow** | [**ShopFollow**](ShopFollow.md) |  | 

### Return type

[**ShopFollow**](ShopFollow.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followFollowsDestroy**
```swift
    open class func followFollowsDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop follow.

FollowAPI.followFollowsDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop follow. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followFollowsList**
```swift
    open class func followFollowsList(page: Int? = nil, completion: @escaping (_ data: PaginatedShopFollowList?, _ error: Error?) -> Void)
```



followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | A page number within the paginated result set. (optional)

FollowAPI.followFollowsList(page: page) { (response, error) in
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

[**PaginatedShopFollowList**](PaginatedShopFollowList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followFollowsPartialUpdate**
```swift
    open class func followFollowsPartialUpdate(id: Int, patchedShopFollow: PatchedShopFollow? = nil, completion: @escaping (_ data: ShopFollow?, _ error: Error?) -> Void)
```



followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop follow.
let patchedShopFollow = PatchedShopFollow(id: 123, shop: ShopDetailsModel(id: 123, employeeCount: 123, name: "name_example", description: "description_example", note: "note_example", customerServicePhone: "customerServicePhone_example", address: "address_example", latitude: 123, longitude: 123, coverImage: "coverImage_example", avatarImage: "avatarImage_example", username: "username_example", shopName: "shopName_example", country: "country_example", city: "city_example", district: "district_example", customersType: CustomersTypeEnum(), servicesTypes: ServicesTypesEnum(), onlinePaymentRequested: false, bankDetailsDocument: "bankDetailsDocument_example", onlinePaymentStatus: OnlinePaymentStatusEnum(), aiRecommendations: 123, aiPersonalization: 123, createdAt: Date(), managerPhoneNumber: "managerPhoneNumber_example", owner: 123, company: 123), shopId: 123, createdAt: Date()) // PatchedShopFollow |  (optional)

FollowAPI.followFollowsPartialUpdate(id: id, patchedShopFollow: patchedShopFollow) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop follow. | 
 **patchedShopFollow** | [**PatchedShopFollow**](PatchedShopFollow.md) |  | [optional] 

### Return type

[**ShopFollow**](ShopFollow.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followFollowsRetrieve**
```swift
    open class func followFollowsRetrieve(id: Int, completion: @escaping (_ data: ShopFollow?, _ error: Error?) -> Void)
```



followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop follow.

FollowAPI.followFollowsRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop follow. | 

### Return type

[**ShopFollow**](ShopFollow.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followFollowsUpdate**
```swift
    open class func followFollowsUpdate(id: Int, shopFollow: ShopFollow, completion: @escaping (_ data: ShopFollow?, _ error: Error?) -> Void)
```



followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop follow.
let shopFollow = ShopFollow(id: 123, shop: ShopDetailsModel(id: 123, employeeCount: 123, name: "name_example", description: "description_example", note: "note_example", customerServicePhone: "customerServicePhone_example", address: "address_example", latitude: 123, longitude: 123, coverImage: "coverImage_example", avatarImage: "avatarImage_example", username: "username_example", shopName: "shopName_example", country: "country_example", city: "city_example", district: "district_example", customersType: CustomersTypeEnum(), servicesTypes: ServicesTypesEnum(), onlinePaymentRequested: false, bankDetailsDocument: "bankDetailsDocument_example", onlinePaymentStatus: OnlinePaymentStatusEnum(), aiRecommendations: 123, aiPersonalization: 123, createdAt: Date(), managerPhoneNumber: "managerPhoneNumber_example", owner: 123, company: 123), shopId: 123, createdAt: Date()) // ShopFollow | 

FollowAPI.followFollowsUpdate(id: id, shopFollow: shopFollow) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop follow. | 
 **shopFollow** | [**ShopFollow**](ShopFollow.md) |  | 

### Return type

[**ShopFollow**](ShopFollow.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

