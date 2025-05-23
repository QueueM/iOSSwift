//
// WebhookMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WebhookMetadata: Codable, JSONEncodable, Hashable {

    public var paymentFor: String
    public var paymentType: String?
    public var billName: String?
    public var phoneNumber: String?
    public var email: String?
    public var address: String?
    public var billingCycle: String?

    public init(paymentFor: String, paymentType: String? = nil, billName: String? = nil, phoneNumber: String? = nil, email: String? = nil, address: String? = nil, billingCycle: String? = nil) {
        self.paymentFor = paymentFor
        self.paymentType = paymentType
        self.billName = billName
        self.phoneNumber = phoneNumber
        self.email = email
        self.address = address
        self.billingCycle = billingCycle
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case paymentFor = "payment_for"
        case paymentType = "payment_type"
        case billName = "bill_name"
        case phoneNumber = "phone_number"
        case email
        case address
        case billingCycle = "billing_cycle"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(paymentFor, forKey: .paymentFor)
        try container.encodeIfPresent(paymentType, forKey: .paymentType)
        try container.encodeIfPresent(billName, forKey: .billName)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(billingCycle, forKey: .billingCycle)
    }
}

