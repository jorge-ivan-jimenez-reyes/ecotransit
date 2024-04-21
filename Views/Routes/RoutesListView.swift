import SwiftUI

struct RoutesListView: View {
    @ObservedObject var viewModel: RoutesViewModel

    var body: some View {
        List(viewModel.routes, id: \.id) { route in
            NavigationLink(destination: RouteDetailView(route: route)) {
                VStack(alignment: .leading) {
                    Text(route.name).font(.headline)
                    Text("Duration: \(route.duration) - Distance: \(route.distance)").font(.subheadline)
                }
            }
        }
        .navigationTitle("Routes")
        .onAppear {
            viewModel.loadRoutes()
        }
    }
}

struct RoutesListView_Previews: PreviewProvider {
    static var previews: some View {
        RoutesListView(viewModel: RoutesViewModel())
    }
}
