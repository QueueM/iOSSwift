//
// FollowAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FollowAPI {

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func followFeedRetrieve(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: FeedItem?, _ error: Error?) -> Void)) -> RequestTask {
        return followFeedRetrieveWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /follow/feed/
     - GET /follow/feed/ → aggregated feed of reels, stories, services, discounts & notifications
     - Bearer Token:
       - type: http
       - name: jwtAuth
     - returns: RequestBuilder<FeedItem> 
     */
    open class func followFeedRetrieveWithRequestBuilder() -> RequestBuilder<FeedItem> {
        let localVariablePath = "/follow/feed/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FeedItem>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter shopFollow: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func followFollowsCreate(shopFollow: ShopFollow, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ShopFollow?, _ error: Error?) -> Void)) -> RequestTask {
        return followFollowsCreateWithRequestBuilder(shopFollow: shopFollow).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /follow/follows/
     - followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow
     - Bearer Token:
       - type: http
       - name: jwtAuth
     - parameter shopFollow: (body)  
     - returns: RequestBuilder<ShopFollow> 
     */
    open class func followFollowsCreateWithRequestBuilder(shopFollow: ShopFollow) -> RequestBuilder<ShopFollow> {
        let localVariablePath = "/follow/follows/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: shopFollow)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ShopFollow>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) A unique integer value identifying this shop follow. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func followFollowsDestroy(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return followFollowsDestroyWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /follow/follows/{id}/
     - followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow
     - Bearer Token:
       - type: http
       - name: jwtAuth
     - parameter id: (path) A unique integer value identifying this shop follow. 
     - returns: RequestBuilder<Void> 
     */
    open class func followFollowsDestroyWithRequestBuilder(id: Int) -> RequestBuilder<Void> {
        var localVariablePath = "/follow/follows/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter page: (query) A page number within the paginated result set. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func followFollowsList(page: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PaginatedShopFollowList?, _ error: Error?) -> Void)) -> RequestTask {
        return followFollowsListWithRequestBuilder(page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /follow/follows/
     - followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow
     - Bearer Token:
       - type: http
       - name: jwtAuth
     - parameter page: (query) A page number within the paginated result set. (optional)
     - returns: RequestBuilder<PaginatedShopFollowList> 
     */
    open class func followFollowsListWithRequestBuilder(page: Int? = nil) -> RequestBuilder<PaginatedShopFollowList> {
        let localVariablePath = "/follow/follows/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaginatedShopFollowList>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) A unique integer value identifying this shop follow. 
     - parameter patchedShopFollow: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func followFollowsPartialUpdate(id: Int, patchedShopFollow: PatchedShopFollow? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ShopFollow?, _ error: Error?) -> Void)) -> RequestTask {
        return followFollowsPartialUpdateWithRequestBuilder(id: id, patchedShopFollow: patchedShopFollow).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /follow/follows/{id}/
     - followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow
     - Bearer Token:
       - type: http
       - name: jwtAuth
     - parameter id: (path) A unique integer value identifying this shop follow. 
     - parameter patchedShopFollow: (body)  (optional)
     - returns: RequestBuilder<ShopFollow> 
     */
    open class func followFollowsPartialUpdateWithRequestBuilder(id: Int, patchedShopFollow: PatchedShopFollow? = nil) -> RequestBuilder<ShopFollow> {
        var localVariablePath = "/follow/follows/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchedShopFollow)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ShopFollow>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) A unique integer value identifying this shop follow. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func followFollowsRetrieve(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ShopFollow?, _ error: Error?) -> Void)) -> RequestTask {
        return followFollowsRetrieveWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /follow/follows/{id}/
     - followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow
     - Bearer Token:
       - type: http
       - name: jwtAuth
     - parameter id: (path) A unique integer value identifying this shop follow. 
     - returns: RequestBuilder<ShopFollow> 
     */
    open class func followFollowsRetrieveWithRequestBuilder(id: Int) -> RequestBuilder<ShopFollow> {
        var localVariablePath = "/follow/follows/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ShopFollow>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) A unique integer value identifying this shop follow. 
     - parameter shopFollow: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func followFollowsUpdate(id: Int, shopFollow: ShopFollow, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ShopFollow?, _ error: Error?) -> Void)) -> RequestTask {
        return followFollowsUpdateWithRequestBuilder(id: id, shopFollow: shopFollow).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PUT /follow/follows/{id}/
     - followApp:   POST   /follow/follows/         → follow a shop   GET    /follow/follows/         → list your follows   DELETE /follow/follows/{id}/    → unfollow
     - Bearer Token:
       - type: http
       - name: jwtAuth
     - parameter id: (path) A unique integer value identifying this shop follow. 
     - parameter shopFollow: (body)  
     - returns: RequestBuilder<ShopFollow> 
     */
    open class func followFollowsUpdateWithRequestBuilder(id: Int, shopFollow: ShopFollow) -> RequestBuilder<ShopFollow> {
        var localVariablePath = "/follow/follows/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: shopFollow)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ShopFollow>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
