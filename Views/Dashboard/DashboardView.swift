import SwiftUI
import MapKit

struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                StatusBarView()
                    .frame(height: 50)
                    .background(Color.blue.opacity(0.3))
                    .padding(.bottom, 5)

                AlertsView()
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .frame(maxHeight: 150)
                    .padding(.horizontal)

                MapView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.bottom)
            }
            .navigationTitle("Dashboard")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    settingsButton()
                }
            }
        }
    }

    private func settingsButton() -> some View {
        Button(action: {
            // Action for settings
            print("Settings tapped")
        }) {
            Image(systemName: "gear")
                .imageScale(.large)
                .padding()
        }
    }
}

struct StatusBarView: View {
    // Example for a status bar, can show live traffic or weather status
    var body: some View {
        HStack {
            Image(systemName: "sun.max.fill")
                .foregroundColor(.yellow)
            Text("AQI: Good, Traffic: Light")
                .font(.system(size: 14))
            Spacer()
            Image(systemName: "car.fill")
                .foregroundColor(.green)
            Text("No delays on Route 5")
                .font(.system(size: 14))
        }
        .padding(.horizontal)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
