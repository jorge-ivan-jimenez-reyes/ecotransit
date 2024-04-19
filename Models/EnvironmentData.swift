import Foundation

struct EnvironmentData: Codable, Identifiable {
    var id: UUID
    var airQualityIndex: Int
    var noiseLevel: Double // Decibeles
    var temperature: Double // Celsius
}

extension EnvironmentData {
    // Ejemplo de datos ambientales.
    static var example: EnvironmentData {
        EnvironmentData(id: UUID(), airQualityIndex: 50, noiseLevel: 70.0, temperature: 22.5)
    }
}
