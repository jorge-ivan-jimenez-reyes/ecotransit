import SwiftUI

struct AlertsView: View {
    // Example data - you might want to fetch this from a ViewModel
    let alerts: [String] = ["High traffic in downtown area", "New route available from Main St. to 2nd Ave."]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                ForEach(alerts, id: \.self) { alert in
                    AlertCard(alert: alert)
                }
            }
            .padding(.top)
        }
        .frame(maxHeight: 300) // Adjusted for better viewing experience
    }
}

/// Custom view for an alert card
struct AlertCard: View {
    var alert: String
    var body: some View {
        HStack {
            Image(systemName: "exclamationmark.triangle.fill")
                .foregroundColor(.yellow)
                .padding(.trailing, 5)

            Text(alert)
                .foregroundColor(.white)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(8)
                .shadow(radius: 3)
        }
        .padding(.horizontal)
        .animation(.easeInOut, value: alert)
    }
}

struct AlertsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}
