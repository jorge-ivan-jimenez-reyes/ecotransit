import SwiftUI
import CoreLocation  // Import CoreLocation to use CLLocationCoordinate2D

struct RouteDetailView: View {
    var route: Route

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(route.name).font(.largeTitle)
                Text("Duration: \(route.duration)")
                Text("Distance: \(route.distance)")
                Text("Eco Rating: \(String(repeating: "🌿", count: route.ecoRating))")
                Divider()
                Text("Detailed Route Information...")
                Text("Real-time traffic updates...")
            }
            .padding()
        }
        .navigationTitle("Route Details")
    }
}

struct RouteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RouteDetailView(route: Route(id: UUID(), name: "Sample Route", duration: "30 mins", distance: "8 miles", ecoRating: 3, startLocation: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), endLocation: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437), stops: []))
    }
}
