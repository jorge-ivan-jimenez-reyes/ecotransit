import SwiftUI

struct AlertsView: View {
    // Example data - you might want to fetch this from a ViewModel
    let alerts: [String] = ["High traffic in downtown area", "New route available from Main St. to 2nd Ave."]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                ForEach(alerts, id: \.self) { alert in
                    Text(alert)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(8)
                        .shadow(radius: 3)
                        .padding(.horizontal)
                }
            }
            .padding(.top)
        }
        .frame(maxHeight: 200) // Max height constraint to prevent excessive view size
    }
}

struct AlertsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}
