import SwiftUI

struct CommunityHubView: View {
    var events: [CommunityEvent]  // Array of events

    var body: some View {
        List(events, id: \.id) { event in  // Ensuring that events conform to Identifiable
            VStack(alignment: .leading) {
                Text(event.name).font(.headline)
                Text(event.description).font(.subheadline)
                Text("Participantes: \(event.participants)")
            }
        }
    }
}
