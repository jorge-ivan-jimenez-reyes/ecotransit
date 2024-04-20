import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                DashboardView()
                    .tabItem {
                        Label("Inicio", systemImage: "house.fill")
                    }
                    .tag(0)
                
                RoutesListView()
                    .tabItem {
                        Label("Rutas", systemImage: "map.fill")
                    }
                    .tag(1)
                
                ReportsListView()
                    .tabItem {
                        Label("Reportes", systemImage: "exclamationmark.bubble.fill")
                    }
                    .tag(2)
                
                EducationView()
                    .tabItem {
                        Label("Educación", systemImage: "books.vertical.fill")
                    }
                    .tag(3)
                
                CommunityReportsView(reports: [])
                    .tabItem {
                        Label("Comunidad", systemImage: "person.3.fill")
                    }
                    .tag(4)
            }
            .navigationTitle(displayTitle(for: selectedTab))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Perfil/Configuración presionado")
                    }) {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
            }
        }
    }
    
    private func displayTitle(for tab: Int) -> String {
        switch tab {
        case 0:
            return "Inicio"
        case 1:
            return "Rutas Eco-Amigables"
        case 2:
            return "Reportes Ciudadanos"
        case 3:
            return "Educación Ambiental"
        case 4:
            return "Comunidad"
        default:
            return "EcoTransitVision"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
