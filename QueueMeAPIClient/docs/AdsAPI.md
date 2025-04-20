# AdsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adsShopAdsChoicesRetrieve**](AdsAPI.md#adsshopadschoicesretrieve) | **GET** /ads/shop-ads/choices/ | 
[**adsShopAdsCreate**](AdsAPI.md#adsshopadscreate) | **POST** /ads/shop-ads/ | 
[**adsShopAdsDestroy**](AdsAPI.md#adsshopadsdestroy) | **DELETE** /ads/shop-ads/{id}/ | 
[**adsShopAdsFetchAdRetrieve**](AdsAPI.md#adsshopadsfetchadretrieve) | **GET** /ads/shop-ads/fetch_ad/ | 
[**adsShopAdsImpressionChoicesRetrieve**](AdsAPI.md#adsshopadsimpressionchoicesretrieve) | **GET** /ads/shop-ads-impression/choices/ | 
[**adsShopAdsImpressionCreate**](AdsAPI.md#adsshopadsimpressioncreate) | **POST** /ads/shop-ads-impression/ | 
[**adsShopAdsImpressionDestroy**](AdsAPI.md#adsshopadsimpressiondestroy) | **DELETE** /ads/shop-ads-impression/{id}/ | 
[**adsShopAdsImpressionList**](AdsAPI.md#adsshopadsimpressionlist) | **GET** /ads/shop-ads-impression/ | 
[**adsShopAdsImpressionPartialUpdate**](AdsAPI.md#adsshopadsimpressionpartialupdate) | **PATCH** /ads/shop-ads-impression/{id}/ | 
[**adsShopAdsImpressionRetrieve**](AdsAPI.md#adsshopadsimpressionretrieve) | **GET** /ads/shop-ads-impression/{id}/ | 
[**adsShopAdsImpressionUpdate**](AdsAPI.md#adsshopadsimpressionupdate) | **PUT** /ads/shop-ads-impression/{id}/ | 
[**adsShopAdsList**](AdsAPI.md#adsshopadslist) | **GET** /ads/shop-ads/ | 
[**adsShopAdsPartialUpdate**](AdsAPI.md#adsshopadspartialupdate) | **PATCH** /ads/shop-ads/{id}/ | 
[**adsShopAdsPurchaseAdCreditCreate**](AdsAPI.md#adsshopadspurchaseadcreditcreate) | **POST** /ads/shop-ads/purchase_ad_credit/ | 
[**adsShopAdsRetrieve**](AdsAPI.md#adsshopadsretrieve) | **GET** /ads/shop-ads/{id}/ | 
[**adsShopAdsUpdate**](AdsAPI.md#adsshopadsupdate) | **PUT** /ads/shop-ads/{id}/ | 


# **adsShopAdsChoicesRetrieve**
```swift
    open class func adsShopAdsChoicesRetrieve(completion: @escaping (_ data: ShopAds?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AdsAPI.adsShopAdsChoicesRetrieve() { (response, error) in
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

[**ShopAds**](ShopAds.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsCreate**
```swift
    open class func adsShopAdsCreate(shopAds: ShopAds, completion: @escaping (_ data: ShopAds?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let shopAds = ShopAds(id: 123, targetGender: TargetGenderEnum(), title: "title_example", description: "description_example", image: "image_example", budget: 123, isActive: false, startDate: Date(), endDate: Date(), latitude: 123, longitude: 123, aiTargetingData: 123, shop: 123, service: 123) // ShopAds | 

AdsAPI.adsShopAdsCreate(shopAds: shopAds) { (response, error) in
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
 **shopAds** | [**ShopAds**](ShopAds.md) |  | 

### Return type

[**ShopAds**](ShopAds.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsDestroy**
```swift
    open class func adsShopAdsDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop ads model.

AdsAPI.adsShopAdsDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop ads model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsFetchAdRetrieve**
```swift
    open class func adsShopAdsFetchAdRetrieve(completion: @escaping (_ data: ShopAds?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AdsAPI.adsShopAdsFetchAdRetrieve() { (response, error) in
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

[**ShopAds**](ShopAds.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsImpressionChoicesRetrieve**
```swift
    open class func adsShopAdsImpressionChoicesRetrieve(completion: @escaping (_ data: ShopAdsImpression?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AdsAPI.adsShopAdsImpressionChoicesRetrieve() { (response, error) in
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

[**ShopAdsImpression**](ShopAdsImpression.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsImpressionCreate**
```swift
    open class func adsShopAdsImpressionCreate(shopAdsImpression: ShopAdsImpression, completion: @escaping (_ data: ShopAdsImpression?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let shopAdsImpression = ShopAdsImpression(id: 123, impressionType: ImpressionTypeEnum(), timestamp: Date(), ad: 123, user: 123) // ShopAdsImpression | 

AdsAPI.adsShopAdsImpressionCreate(shopAdsImpression: shopAdsImpression) { (response, error) in
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
 **shopAdsImpression** | [**ShopAdsImpression**](ShopAdsImpression.md) |  | 

### Return type

[**ShopAdsImpression**](ShopAdsImpression.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsImpressionDestroy**
```swift
    open class func adsShopAdsImpressionDestroy(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop ads impression model.

AdsAPI.adsShopAdsImpressionDestroy(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop ads impression model. | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsImpressionList**
```swift
    open class func adsShopAdsImpressionList(ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedShopAdsImpressionList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

AdsAPI.adsShopAdsImpressionList(ordering: ordering, page: page, pageSize: pageSize) { (response, error) in
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

[**PaginatedShopAdsImpressionList**](PaginatedShopAdsImpressionList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsImpressionPartialUpdate**
```swift
    open class func adsShopAdsImpressionPartialUpdate(id: Int, patchedShopAdsImpression: PatchedShopAdsImpression? = nil, completion: @escaping (_ data: ShopAdsImpression?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop ads impression model.
let patchedShopAdsImpression = PatchedShopAdsImpression(id: 123, impressionType: ImpressionTypeEnum(), timestamp: Date(), ad: 123, user: 123) // PatchedShopAdsImpression |  (optional)

AdsAPI.adsShopAdsImpressionPartialUpdate(id: id, patchedShopAdsImpression: patchedShopAdsImpression) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop ads impression model. | 
 **patchedShopAdsImpression** | [**PatchedShopAdsImpression**](PatchedShopAdsImpression.md) |  | [optional] 

### Return type

[**ShopAdsImpression**](ShopAdsImpression.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsImpressionRetrieve**
```swift
    open class func adsShopAdsImpressionRetrieve(id: Int, completion: @escaping (_ data: ShopAdsImpression?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop ads impression model.

AdsAPI.adsShopAdsImpressionRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop ads impression model. | 

### Return type

[**ShopAdsImpression**](ShopAdsImpression.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsImpressionUpdate**
```swift
    open class func adsShopAdsImpressionUpdate(id: Int, shopAdsImpression: ShopAdsImpression, completion: @escaping (_ data: ShopAdsImpression?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop ads impression model.
let shopAdsImpression = ShopAdsImpression(id: 123, impressionType: ImpressionTypeEnum(), timestamp: Date(), ad: 123, user: 123) // ShopAdsImpression | 

AdsAPI.adsShopAdsImpressionUpdate(id: id, shopAdsImpression: shopAdsImpression) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop ads impression model. | 
 **shopAdsImpression** | [**ShopAdsImpression**](ShopAdsImpression.md) |  | 

### Return type

[**ShopAdsImpression**](ShopAdsImpression.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsList**
```swift
    open class func adsShopAdsList(ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedShopAdsList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let page = 987 // Int | A page number within the paginated result set. (optional)
let pageSize = 987 // Int | Number of results to return per page. (optional)

AdsAPI.adsShopAdsList(ordering: ordering, page: page, pageSize: pageSize) { (response, error) in
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

[**PaginatedShopAdsList**](PaginatedShopAdsList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsPartialUpdate**
```swift
    open class func adsShopAdsPartialUpdate(id: Int, patchedShopAds: PatchedShopAds? = nil, completion: @escaping (_ data: ShopAds?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop ads model.
let patchedShopAds = PatchedShopAds(id: 123, targetGender: TargetGenderEnum(), title: "title_example", description: "description_example", image: "image_example", budget: 123, isActive: false, startDate: Date(), endDate: Date(), latitude: 123, longitude: 123, aiTargetingData: 123, shop: 123, service: 123) // PatchedShopAds |  (optional)

AdsAPI.adsShopAdsPartialUpdate(id: id, patchedShopAds: patchedShopAds) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop ads model. | 
 **patchedShopAds** | [**PatchedShopAds**](PatchedShopAds.md) |  | [optional] 

### Return type

[**ShopAds**](ShopAds.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsPurchaseAdCreditCreate**
```swift
    open class func adsShopAdsPurchaseAdCreditCreate(shopAds: ShopAds, completion: @escaping (_ data: ShopAds?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let shopAds = ShopAds(id: 123, targetGender: TargetGenderEnum(), title: "title_example", description: "description_example", image: "image_example", budget: 123, isActive: false, startDate: Date(), endDate: Date(), latitude: 123, longitude: 123, aiTargetingData: 123, shop: 123, service: 123) // ShopAds | 

AdsAPI.adsShopAdsPurchaseAdCreditCreate(shopAds: shopAds) { (response, error) in
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
 **shopAds** | [**ShopAds**](ShopAds.md) |  | 

### Return type

[**ShopAds**](ShopAds.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsRetrieve**
```swift
    open class func adsShopAdsRetrieve(id: Int, completion: @escaping (_ data: ShopAds?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop ads model.

AdsAPI.adsShopAdsRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop ads model. | 

### Return type

[**ShopAds**](ShopAds.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adsShopAdsUpdate**
```swift
    open class func adsShopAdsUpdate(id: Int, shopAds: ShopAds, completion: @escaping (_ data: ShopAds?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this shop ads model.
let shopAds = ShopAds(id: 123, targetGender: TargetGenderEnum(), title: "title_example", description: "description_example", image: "image_example", budget: 123, isActive: false, startDate: Date(), endDate: Date(), latitude: 123, longitude: 123, aiTargetingData: 123, shop: 123, service: 123) // ShopAds | 

AdsAPI.adsShopAdsUpdate(id: id, shopAds: shopAds) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this shop ads model. | 
 **shopAds** | [**ShopAds**](ShopAds.md) |  | 

### Return type

[**ShopAds**](ShopAds.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

