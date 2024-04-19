import SwiftUI

@main
struct EcoTransitVisionApp: App {
    @StateObject private var appEnvironment = AppEnvironment()  // Usando @StateObject para instanciar AppEnvironment

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appEnvironment)  // Proveer el AppEnvironment a la vista
        }
    }
}
