# SubscriptionsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionsIntegratePaymentCreate**](SubscriptionsAPI.md#subscriptionsintegratepaymentcreate) | **POST** /subscriptions/integrate-payment/ | 
[**subscriptionsPlansRetrieve**](SubscriptionsAPI.md#subscriptionsplansretrieve) | **GET** /subscriptions/plans/{plan_id}/ | 


# **subscriptionsIntegratePaymentCreate**
```swift
    open class func subscriptionsIntegratePaymentCreate(subscriptionPaymentIntegrationRequest: SubscriptionPaymentIntegrationRequest, completion: @escaping (_ data: SubscriptionPaymentIntegrationResponse?, _ error: Error?) -> Void)
```



POST /subscription/integrate-payment/ Integrates a completed payment with a company's subscription.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let subscriptionPaymentIntegrationRequest = SubscriptionPaymentIntegrationRequest(company: 123, plan: 123, billingCycle: BillingCycleEnum(), paymentId: "paymentId_example", status: "status_example") // SubscriptionPaymentIntegrationRequest | 

SubscriptionsAPI.subscriptionsIntegratePaymentCreate(subscriptionPaymentIntegrationRequest: subscriptionPaymentIntegrationRequest) { (response, error) in
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
 **subscriptionPaymentIntegrationRequest** | [**SubscriptionPaymentIntegrationRequest**](SubscriptionPaymentIntegrationRequest.md) |  | 

### Return type

[**SubscriptionPaymentIntegrationResponse**](SubscriptionPaymentIntegrationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsPlansRetrieve**
```swift
    open class func subscriptionsPlansRetrieve(planId: Int, completion: @escaping (_ data: CompanySubscriptionPlan?, _ error: Error?) -> Void)
```



GET /subscription/plans/{plan_id}/ Retrieves detailed info about a specific subscription plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let planId = 987 // Int | 

SubscriptionsAPI.subscriptionsPlansRetrieve(planId: planId) { (response, error) in
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
 **planId** | **Int** |  | 

### Return type

[**CompanySubscriptionPlan**](CompanySubscriptionPlan.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

