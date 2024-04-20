import SwiftUI // This must be included to access SwiftUI components
import Foundation
// Ensure UserReport is defined somewhere in your project and is accessible
struct UserReport: Identifiable {
    let id = UUID()
    var title: String
    var description: String
}

struct CommunityReportsView: View {
    var reports: [UserReport] // Ensure UserReport is defined and imported if in a separate file

    var body: some View {
        VStack {
            ForEach(reports) { report in
                VStack(alignment: .leading) {
                    Text(report.title) // Make sure 'title' is a String
                    Text(report.description) // Make sure 'description' is a String
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
            }
        }
    }
}

struct CommunityReportsView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityReportsView(reports: [
            UserReport(title: "Title", description: "Description")
        ])
    }
}

struct CommunityEvent: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var participants: Int
}
