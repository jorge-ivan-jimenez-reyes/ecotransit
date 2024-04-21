import Foundation
import Combine
import CoreLocation

class RoutesViewModel: ObservableObject {
    @Published var routes: [Route] = []

    func loadRoutes() {
        let sampleStart = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
        let sampleEnd = CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)
        self.routes = [
            Route(id: UUID(), name: "Route 1", duration: "5 hrs", distance: "350 miles", ecoRating: 4, startLocation: sampleStart, endLocation: sampleEnd, stops: []),
            Route(id: UUID(), name: "Route 2", duration: "2 hrs", distance: "120 miles", ecoRating: 3, startLocation: sampleEnd, endLocation: sampleStart, stops: [])
        ]
    }
}
