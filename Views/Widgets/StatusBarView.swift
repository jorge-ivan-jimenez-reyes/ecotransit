import SwiftUI

// For displaying network status
struct NetworkStatusBarView: View {
    var body: some View {
        Text("Network Connection: Good")
            .padding()
            .background(Color.green.opacity(0.3))
            .foregroundColor(.white)
            .cornerRadius(8) // Optional: Adds rounded corners
    }
}

// Preview for NetworkStatusBarView
struct NetworkStatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkStatusBarView()
            .previewLayout(.sizeThatFits) // Layout option that sizes the view according to its content
            .padding() // Optional: Adds padding around the preview
    }
}

// For displaying general application status
struct GeneralStatusBarView: View {
    var body: some View {
        Text("Welcome to EcoTransit")
            .padding()
            .background(Color.blue.opacity(0.3))
            .foregroundColor(.white)
            .cornerRadius(8) // Optional: Adds rounded corners
    }
}

// Preview for GeneralStatusBarView
struct GeneralStatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralStatusBarView()
            .previewLayout(.sizeThatFits) // Layout option that sizes the view according to its content
            .padding() // Optional: Adds padding around the preview
    }
}
