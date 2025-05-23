//
// CustomerTypeEnum.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** * &#x60;regular&#x60; - Regular * &#x60;vip&#x60; - VIP * &#x60;new_customer&#x60; - New Customer */
public enum CustomerTypeEnum: String, Codable, CaseIterable {
    case regular = "regular"
    case vip = "vip"
    case newCustomer = "new_customer"
}
