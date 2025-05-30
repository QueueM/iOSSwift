//
// UnifiedLoginResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UnifiedLoginResponse: Codable, JSONEncodable, Hashable {

    public var message: String
    public var access: String
    public var refresh: String
    public var roles: [String]

    public init(message: String, access: String, refresh: String, roles: [String]) {
        self.message = message
        self.access = access
        self.refresh = refresh
        self.roles = roles
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case access
        case refresh
        case roles
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
        try container.encode(access, forKey: .access)
        try container.encode(refresh, forKey: .refresh)
        try container.encode(roles, forKey: .roles)
    }
}

