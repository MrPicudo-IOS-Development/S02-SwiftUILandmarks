/* LandmarksApp.swift --> Landmarks. Created by Miguel Torres on 07/03/23. */

import SwiftUI

/// Toda aplicación en SwiftUI tiene una estructura principal que adopta el protocolo "App". En su propiedad "body", se retorna una o más escenas, que sirven para mostrar contenido en la interfaz. Inicialmente, la única escena que retorna body es el ContentView.
@main // Este atributo identifica el punto de entrada de la App
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
