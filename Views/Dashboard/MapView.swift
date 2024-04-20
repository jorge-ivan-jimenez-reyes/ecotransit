import SwiftUI
import MapKit

// Make sure this is the only Landmark definition across your project
struct Landmark: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.052235, longitude: -118.243683),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    // Example data for annotations
    let landmarks = [
        Landmark(name: "Example Location", coordinate: CLLocationCoordinate2D(latitude: 34.052235, longitude: -118.243683))
    ]

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: landmarks) { landmark in
            MapAnnotation(coordinate: landmark.coordinate) {
                annotationView(for: landmark)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }

    @ViewBuilder
    private func annotationView(for landmark: Landmark) -> some View {
        VStack {
            Image(systemName: "mappin.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(.red)
            Text(landmark.name)
                .fixedSize()
                .font(.caption)
                .foregroundColor(.blue)
                .padding(5)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 3)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
