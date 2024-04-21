import Foundation
import CoreLocation

struct Route: Identifiable, Codable {
    var id: UUID
    var name: String
    var duration: String
    var distance: String
    var ecoRating: Int
    var startLocation: CLLocationCoordinate2D
    var endLocation: CLLocationCoordinate2D
    var stops: [CLLocationCoordinate2D]
}
