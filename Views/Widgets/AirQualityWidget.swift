import SwiftUI

struct AirQualityWidget: View {
    var airQualityIndex: Int
    var temperature: Double

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Calidad del Aire: \(airQualityIndex) - \(qualityDescription(index: airQualityIndex))")
                .bold()
            Text("Temperatura: \(temperature, specifier: "%.1f")ºC")
            Text("Consejo: \(travelAdvice(quality: airQualityIndex))")
        }
        .padding()
        .background(Color.blue.opacity(0.2))
        .cornerRadius(10)
    }

    private func qualityDescription(index: Int) -> String {
        switch index {
        case 0..<50:
            return "Buena"
        case 50..<100:
            return "Moderada"
        default:
            return "Pobre"
        }
    }

    private func travelAdvice(quality: Int) -> String {
        quality < 50 ? "Ideal para viajar" : "Considera limitar el tiempo al aire libre"
    }
}

// Preview provider with sample data
struct AirQualityWidget_Previews: PreviewProvider {
    static var previews: some View {
        AirQualityWidget(airQualityIndex: 42, temperature: 22.5)
    }
}
