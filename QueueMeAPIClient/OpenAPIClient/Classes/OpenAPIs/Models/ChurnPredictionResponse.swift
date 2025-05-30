//
// ChurnPredictionResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChurnPredictionResponse: Codable, JSONEncodable, Hashable {

    public var willChurn: Bool
    public var score: Double

    public init(willChurn: Bool, score: Double) {
        self.willChurn = willChurn
        self.score = score
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case willChurn = "will_churn"
        case score
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(willChurn, forKey: .willChurn)
        try container.encode(score, forKey: .score)
    }
}

