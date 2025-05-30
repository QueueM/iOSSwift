//
// LoginWithOTPResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LoginWithOTPResponse: Codable, JSONEncodable, Hashable {

    public var userDetails: [String: AnyCodable]
    public var access: String
    public var refresh: String
    public var customerDetails: [String: AnyCodable]?
    public var companyDetails: [String: AnyCodable]?
    public var employeeDetails: [String: AnyCodable]?

    public init(userDetails: [String: AnyCodable], access: String, refresh: String, customerDetails: [String: AnyCodable]?, companyDetails: [String: AnyCodable]?, employeeDetails: [String: AnyCodable]?) {
        self.userDetails = userDetails
        self.access = access
        self.refresh = refresh
        self.customerDetails = customerDetails
        self.companyDetails = companyDetails
        self.employeeDetails = employeeDetails
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userDetails = "user_details"
        case access
        case refresh
        case customerDetails = "customer_details"
        case companyDetails = "company_details"
        case employeeDetails = "employee_details"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userDetails, forKey: .userDetails)
        try container.encode(access, forKey: .access)
        try container.encode(refresh, forKey: .refresh)
        try container.encode(customerDetails, forKey: .customerDetails)
        try container.encode(companyDetails, forKey: .companyDetails)
        try container.encode(employeeDetails, forKey: .employeeDetails)
    }
}

