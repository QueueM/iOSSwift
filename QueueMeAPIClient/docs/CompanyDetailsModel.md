# CompanyDetailsModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user** | **Int** |  | 
**name** | **String** |  | 
**companyImage** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**address** | **String** |  | [optional] 
**isVerified** | **Bool** |  | [optional] 
**status** | [**CompanyDetailsModelStatusEnum**](CompanyDetailsModelStatusEnum.md) |  | [optional] 
**shopsLimit** | **Int64** |  | [optional] 
**merchantType** | [**MerchantTypeEnum**](MerchantTypeEnum.md) |  | [optional] 
**nameArabic** | **String** |  | [optional] 
**registrationDocument** | **String** |  | [optional] 
**taxNumber** | **String** |  | [optional] 
**onlinePaymentGlobalEnabled** | **Bool** | If enabled, all shops for this company will be eligible for online payments. | [optional] 
**forecastData** | **AnyCodable** | AI forecast metadata (will JSON‑encode datetimes/timestamps) | [optional] 
**fraudFlag** | **Bool** | Flag if potential fraud detected | [optional] 
**createdAt** | **Date** | Creation timestamp | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


