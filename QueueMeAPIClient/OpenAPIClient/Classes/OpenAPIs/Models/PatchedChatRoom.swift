//
// PatchedChatRoom.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PatchedChatRoom: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var user: Int?
    public var shop: Int?

    public init(id: Int? = nil, user: Int? = nil, shop: Int? = nil) {
        self.id = id
        self.user = user
        self.shop = shop
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case user
        case shop
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(shop, forKey: .shop)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension PatchedChatRoom: Identifiable {}
