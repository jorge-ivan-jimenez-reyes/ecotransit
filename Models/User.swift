import Foundation

struct User: Codable, Identifiable {
    var id: UUID
    var username: String
    var email: String
    // Puedes agregar más propiedades según sean necesarias para la aplicación.
}

extension User {
    // Inicializador de ejemplo para crear un usuario predeterminado.
    static var example: User {
        User(id: UUID(), username: "ejemploUsuario", email: "usuario@ejemplo.com")
    }
}
