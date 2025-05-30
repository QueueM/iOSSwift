//
// PaymentStatusEnum.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** * &#x60;unpaid&#x60; - Unpaid * &#x60;pending&#x60; - Pending * &#x60;paid&#x60; - Paid */
public enum PaymentStatusEnum: String, Codable, CaseIterable {
    case unpaid = "unpaid"
    case pending = "pending"
    case paid = "paid"
}
