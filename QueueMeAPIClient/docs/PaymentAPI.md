# PaymentAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paymentCreateCreate**](PaymentAPI.md#paymentcreatecreate) | **POST** /payment/create/ | 
[**paymentDemoRetrieve**](PaymentAPI.md#paymentdemoretrieve) | **GET** /payment/demo/ | 
[**paymentProcessCreate**](PaymentAPI.md#paymentprocesscreate) | **POST** /payment/process/ | 
[**paymentWebhookCreate**](PaymentAPI.md#paymentwebhookcreate) | **POST** /payment/webhook/ | 


# **paymentCreateCreate**
```swift
    open class func paymentCreateCreate(paymentCreateRequest: PaymentCreateRequest, completion: @escaping (_ data: PaymentCreateResponse?, _ error: Error?) -> Void)
```



Initiates a payment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let paymentCreateRequest = PaymentCreateRequest(paymentFor: PaymentForEnum(), amount: 123, source: "TODO", metadata: "TODO", description: "description_example") // PaymentCreateRequest | 

PaymentAPI.paymentCreateCreate(paymentCreateRequest: paymentCreateRequest) { (response, error) in
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
 **paymentCreateRequest** | [**PaymentCreateRequest**](PaymentCreateRequest.md) |  | 

### Return type

[**PaymentCreateResponse**](PaymentCreateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentDemoRetrieve**
```swift
    open class func paymentDemoRetrieve(completion: @escaping (_ data: DemoPaymentResponse?, _ error: Error?) -> Void)
```



Demo endpoint for payment creation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


PaymentAPI.paymentDemoRetrieve() { (response, error) in
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

[**DemoPaymentResponse**](DemoPaymentResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentProcessCreate**
```swift
    open class func paymentProcessCreate(paymentProcessingRequest: PaymentProcessingRequest, completion: @escaping (_ data: PaymentProcessingResponse?, _ error: Error?) -> Void)
```



Verifies payment callback processing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let paymentProcessingRequest = PaymentProcessingRequest(paymentId: "paymentId_example", paymentFor: PaymentForEnum()) // PaymentProcessingRequest | 

PaymentAPI.paymentProcessCreate(paymentProcessingRequest: paymentProcessingRequest) { (response, error) in
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
 **paymentProcessingRequest** | [**PaymentProcessingRequest**](PaymentProcessingRequest.md) |  | 

### Return type

[**PaymentProcessingResponse**](PaymentProcessingResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentWebhookCreate**
```swift
    open class func paymentWebhookCreate(webhookRequest: WebhookRequest, completion: @escaping (_ data: WebhookResponse?, _ error: Error?) -> Void)
```



Processes payment gateway webhooks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let webhookRequest = WebhookRequest(data: WebhookData(id: "id_example", status: "status_example", amount: "amount_example", metadata: WebhookMetadata(paymentFor: "paymentFor_example", paymentType: "paymentType_example", billName: "billName_example", phoneNumber: "phoneNumber_example", email: "email_example", address: "address_example", billingCycle: "billingCycle_example"))) // WebhookRequest | 

PaymentAPI.paymentWebhookCreate(webhookRequest: webhookRequest) { (response, error) in
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
 **webhookRequest** | [**WebhookRequest**](WebhookRequest.md) |  | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

