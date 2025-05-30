//
// ServiceExtendedDetailsModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceExtendedDetailsModel: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var serviceName: String
    public var overviews: [ServiceOverview]
    public var faqs: [ServiceFAQ]
    public var processSteps: [ServiceProcessStep]
    public var benefits: [ServiceBenefit]
    public var aftercareTips: [ServiceAftercareTip]
    /** A detailed description of the service. */
    public var detailedDescription: String?
    public var updatedAt: Date?
    public var service: Int

    public init(id: Int, serviceName: String, overviews: [ServiceOverview], faqs: [ServiceFAQ], processSteps: [ServiceProcessStep], benefits: [ServiceBenefit], aftercareTips: [ServiceAftercareTip], detailedDescription: String? = nil, updatedAt: Date? = nil, service: Int) {
        self.id = id
        self.serviceName = serviceName
        self.overviews = overviews
        self.faqs = faqs
        self.processSteps = processSteps
        self.benefits = benefits
        self.aftercareTips = aftercareTips
        self.detailedDescription = detailedDescription
        self.updatedAt = updatedAt
        self.service = service
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case serviceName = "service_name"
        case overviews
        case faqs
        case processSteps = "process_steps"
        case benefits
        case aftercareTips = "aftercare_tips"
        case detailedDescription = "detailed_description"
        case updatedAt = "updated_at"
        case service
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(serviceName, forKey: .serviceName)
        try container.encode(overviews, forKey: .overviews)
        try container.encode(faqs, forKey: .faqs)
        try container.encode(processSteps, forKey: .processSteps)
        try container.encode(benefits, forKey: .benefits)
        try container.encode(aftercareTips, forKey: .aftercareTips)
        try container.encodeIfPresent(detailedDescription, forKey: .detailedDescription)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encode(service, forKey: .service)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ServiceExtendedDetailsModel: Identifiable {}
