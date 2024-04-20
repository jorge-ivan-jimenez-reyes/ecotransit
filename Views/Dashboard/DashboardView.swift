import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack {
                AlertsView()
                    .padding()  // Add padding to separate alerts from the map
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top) // Ensures it takes up appropriate space

                MapView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Map takes the remaining space
            }
            .navigationTitle("Dashboard")
            .navigationBarTitleDisplayMode(.inline) // Makes the navigation title smaller and more integrated
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
