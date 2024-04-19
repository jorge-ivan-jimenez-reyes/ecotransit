import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                DashboardView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Inicio")
                    }
                    .tag(0)
                
                RoutesListView()
                    .tabItem {
                        Image(systemName: "map.fill")
                        Text("Rutas")
                    }
                    .tag(1)
                
                ReportsListView()
                    .tabItem {
                        Image(systemName: "exclamationmark.bubble.fill")
                        Text("Reportes")
                    }
                    .tag(2)
                
                EducationView()
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("Educación")
                    }
                    .tag(3)
                
                CommunityView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Comunidad")
                    }
                    .tag(4)
            }
            .navigationBarTitle(displayTitle(for: selectedTab))
            .navigationBarItems(trailing: Button(action: {
                // Acciones para configuración o perfil de usuario
                print("Perfil/Configuración presionado")
            }) {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
            })
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
