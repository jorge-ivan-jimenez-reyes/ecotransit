import Foundation
import CoreLocation

struct Route: Codable, Identifiable {
    var id: UUID
    var startLocation: CLLocationCoordinate2D
    var endLocation: CLLocationCoordinate2D
    var stops: [CLLocationCoordinate2D]

    enum CodingKeys: String, CodingKey {
        case id, startLocation, endLocation, stops
    }

    // Decodable
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(UUID.self, forKey: .id)

        startLocation = try container.decode(CLLocationCoordinate2D.self, forKey: .startLocation)
        endLocation = try container.decode(CLLocationCoordinate2D.self, forKey: .endLocation)
        stops = try container.decode([CLLocationCoordinate2D].self, forKey: .stops)
    }

    // Encodable
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(startLocation, forKey: .startLocation)
        try container.encode(endLocation, forKey: .endLocation)
        try container.encode(stops, forKey: .stops)
    }
}
