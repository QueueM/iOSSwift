# ApiAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAiChurnCreate**](ApiAPI.md#apiaichurncreate) | **POST** /api/ai/churn/ | 
[**apiAiEmployeePerformanceCreate**](ApiAPI.md#apiaiemployeeperformancecreate) | **POST** /api/ai/employee-performance/ | 
[**apiAiForecastingCreate**](ApiAPI.md#apiaiforecastingcreate) | **POST** /api/ai/forecasting/ | 
[**apiAiFraudCreate**](ApiAPI.md#apiaifraudcreate) | **POST** /api/ai/fraud/ | 
[**apiAiImageAnalysisCreate**](ApiAPI.md#apiaiimageanalysiscreate) | **POST** /api/ai/image-analysis/ | 
[**apiAiPersonalizationCreate**](ApiAPI.md#apiaipersonalizationcreate) | **POST** /api/ai/personalization/ | 
[**apiAiRecommendationsRetrieve**](ApiAPI.md#apiairecommendationsretrieve) | **GET** /api/ai/recommendations/ | 
[**apiAiSegmentationCreate**](ApiAPI.md#apiaisegmentationcreate) | **POST** /api/ai/segmentation/ | 
[**apiAiSentimentCreate**](ApiAPI.md#apiaisentimentcreate) | **POST** /api/ai/sentiment/ | 
[**apiSchemaRetrieve**](ApiAPI.md#apischemaretrieve) | **GET** /api/schema/ | 


# **apiAiChurnCreate**
```swift
    open class func apiAiChurnCreate(churnPredictionRequest: ChurnPredictionRequest, completion: @escaping (_ data: ChurnPredictionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let churnPredictionRequest = ChurnPredictionRequest(customerId: 123, history: 123) // ChurnPredictionRequest | 

ApiAPI.apiAiChurnCreate(churnPredictionRequest: churnPredictionRequest) { (response, error) in
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
 **churnPredictionRequest** | [**ChurnPredictionRequest**](ChurnPredictionRequest.md) |  | 

### Return type

[**ChurnPredictionResponse**](ChurnPredictionResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiEmployeePerformanceCreate**
```swift
    open class func apiAiEmployeePerformanceCreate(employeePerformanceRequest: EmployeePerformanceRequest, completion: @escaping (_ data: EmployeePerformanceResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let employeePerformanceRequest = EmployeePerformanceRequest(employeeId: 123, period: "period_example") // EmployeePerformanceRequest | 

ApiAPI.apiAiEmployeePerformanceCreate(employeePerformanceRequest: employeePerformanceRequest) { (response, error) in
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
 **employeePerformanceRequest** | [**EmployeePerformanceRequest**](EmployeePerformanceRequest.md) |  | 

### Return type

[**EmployeePerformanceResponse**](EmployeePerformanceResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiForecastingCreate**
```swift
    open class func apiAiForecastingCreate(forecastingRequest: ForecastingRequest, completion: @escaping (_ data: ForecastingResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let forecastingRequest = ForecastingRequest(shopId: 123, horizon: 123) // ForecastingRequest | 

ApiAPI.apiAiForecastingCreate(forecastingRequest: forecastingRequest) { (response, error) in
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
 **forecastingRequest** | [**ForecastingRequest**](ForecastingRequest.md) |  | 

### Return type

[**ForecastingResponse**](ForecastingResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiFraudCreate**
```swift
    open class func apiAiFraudCreate(fraudDetectionRequest: FraudDetectionRequest, completion: @escaping (_ data: FraudDetectionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fraudDetectionRequest = FraudDetectionRequest(transactionId: "transactionId_example", amount: 123) // FraudDetectionRequest | 

ApiAPI.apiAiFraudCreate(fraudDetectionRequest: fraudDetectionRequest) { (response, error) in
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
 **fraudDetectionRequest** | [**FraudDetectionRequest**](FraudDetectionRequest.md) |  | 

### Return type

[**FraudDetectionResponse**](FraudDetectionResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiImageAnalysisCreate**
```swift
    open class func apiAiImageAnalysisCreate(imageAnalysisRequest: ImageAnalysisRequest, completion: @escaping (_ data: ImageAnalysisResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let imageAnalysisRequest = ImageAnalysisRequest(imageUrl: "imageUrl_example") // ImageAnalysisRequest | 

ApiAPI.apiAiImageAnalysisCreate(imageAnalysisRequest: imageAnalysisRequest) { (response, error) in
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
 **imageAnalysisRequest** | [**ImageAnalysisRequest**](ImageAnalysisRequest.md) |  | 

### Return type

[**ImageAnalysisResponse**](ImageAnalysisResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiPersonalizationCreate**
```swift
    open class func apiAiPersonalizationCreate(personalizationRequest: PersonalizationRequest, completion: @escaping (_ data: PersonalizationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let personalizationRequest = PersonalizationRequest(userId: 123) // PersonalizationRequest | 

ApiAPI.apiAiPersonalizationCreate(personalizationRequest: personalizationRequest) { (response, error) in
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
 **personalizationRequest** | [**PersonalizationRequest**](PersonalizationRequest.md) |  | 

### Return type

[**PersonalizationResponse**](PersonalizationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiRecommendationsRetrieve**
```swift
    open class func apiAiRecommendationsRetrieve(completion: @escaping (_ data: RecommendationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ApiAPI.apiAiRecommendationsRetrieve() { (response, error) in
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

[**RecommendationResponse**](RecommendationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiSegmentationCreate**
```swift
    open class func apiAiSegmentationCreate(customerSegmentationRequest: CustomerSegmentationRequest, completion: @escaping (_ data: CustomerSegmentationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customerSegmentationRequest = CustomerSegmentationRequest(shopId: 123) // CustomerSegmentationRequest | 

ApiAPI.apiAiSegmentationCreate(customerSegmentationRequest: customerSegmentationRequest) { (response, error) in
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
 **customerSegmentationRequest** | [**CustomerSegmentationRequest**](CustomerSegmentationRequest.md) |  | 

### Return type

[**CustomerSegmentationResponse**](CustomerSegmentationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiSentimentCreate**
```swift
    open class func apiAiSentimentCreate(sentimentRequest: SentimentRequest, completion: @escaping (_ data: SentimentResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sentimentRequest = SentimentRequest(text: "text_example") // SentimentRequest | 

ApiAPI.apiAiSentimentCreate(sentimentRequest: sentimentRequest) { (response, error) in
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
 **sentimentRequest** | [**SentimentRequest**](SentimentRequest.md) |  | 

### Return type

[**SentimentResponse**](SentimentResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiSchemaRetrieve**
```swift
    open class func apiSchemaRetrieve(format: Format_apiSchemaRetrieve? = nil, lang: Lang_apiSchemaRetrieve? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



OpenApi3 schema for this API. Format can be selected via content negotiation.  - YAML: application/vnd.oai.openapi - JSON: application/vnd.oai.openapi+json

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let format = "format_example" // String |  (optional)
let lang = "lang_example" // String |  (optional)

ApiAPI.apiSchemaRetrieve(format: format, lang: lang) { (response, error) in
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
 **format** | **String** |  | [optional] 
 **lang** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.oai.openapi, application/yaml, application/vnd.oai.openapi+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

