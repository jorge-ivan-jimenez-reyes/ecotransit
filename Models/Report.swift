import Foundation
import CoreLocation

struct Report: Codable, Identifiable {
    var id: UUID
    var title: String
    var description: String
    var location: CLLocationCoordinate2D  // Correct type
    var timestamp: Date
    var images: [URL]
    
    enum CodingKeys: String, CodingKey {
        case id, title, description, location, timestamp, images
    }

    // Decodable
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(UUID.self, forKey: .id)
        title = try container.decode(String.self, forKey: .title)
        description = try container.decode(String.self, forKey: .description)
        location = try container.decode(CLLocationCoordinate2D.self, forKey: .location)
        timestamp = try container.decode(Date.self, forKey: .timestamp)
        images = try container.decode([URL].self, forKey: .images)
    }

    // Encodable
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(description, forKey: .description)
        try container.encode(location, forKey: .location)
        try container.encode(timestamp, forKey: .timestamp)
        try container.encode(images, forKey: .images)
    }
}
