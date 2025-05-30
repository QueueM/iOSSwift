//
// DemoPaymentResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DemoPaymentResponse: Codable, JSONEncodable, Hashable {

    public var demoPayment: [String: AnyCodable]
    public var paymentRecordId: Int

    public init(demoPayment: [String: AnyCodable], paymentRecordId: Int) {
        self.demoPayment = demoPayment
        self.paymentRecordId = paymentRecordId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case demoPayment = "demo_payment"
        case paymentRecordId = "payment_record_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(demoPayment, forKey: .demoPayment)
        try container.encode(paymentRecordId, forKey: .paymentRecordId)
    }
}

