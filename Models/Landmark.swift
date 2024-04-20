import Foundation
import CoreLocation

struct CityLandmark: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}
