/* MapView.swift --> Landmarks. Created by Miguel Torres on 07/03/23. */

import SwiftUI
import MapKit // Necesario para usar vistas de SwiftUI desde el framework MapKit

/// Usa una vista de mapa llamada desde el framework MapKit, para modificarla a nuestro gusto y mandarla como escena de SwiftUI a nuestra interfaz.
struct MapView: View {
    
    // Usamos el atributo @State para establecer una fuente para nuestros datos que podemos modificar (o actualizar) desde distintas escenas.
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        // Al usar el prefijo $ en una variable de estado, estamos pasando la referencia al valor de dicha variable.
        Map(coordinateRegion: $region)
    }
}

/// Vista previa de la escena que crea la estructura MapView.
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
