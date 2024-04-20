import SwiftUI
import CoreLocation  // Ensure this import is here to use CLLocationCoordinate2D

// If you've renamed Landmark to MyAppLandmark to resolve ambiguity:
struct MyAppLandmark: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct LandmarkView: View {
    var landmark: MyAppLandmark  // Change this according to your actual type name

    var body: some View {
        VStack {
            Image(systemName: "mappin.circle.fill")
                .foregroundColor(.red)
                .imageScale(.large)
            Text(landmark.name)
                .font(.caption)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

// Ensure your previews and other references use the correct Landmark type
struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkView(landmark: MyAppLandmark(name: "Golden Gate Bridge", coordinate: CLLocationCoordinate2D(latitude: 37.8199, longitude: -122.4783)))
    }
}
