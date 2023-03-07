/* ContentView.swift --> Landmarks. Created by Miguel Torres on 07/03/23. */

import SwiftUI

/// Por default, todas las vistas de SwiftUI se construyen con 2 estructuras, la 1ra estructura adopta el protocolo "View" y describe todo lo que tiene que llevar esta escena: contenido y disposición.
struct ContentView: View {
    var body: some View {
        VStack {
            // Podemos llamar a una vista creada en un archivo externo simplemente con su nombre y constructor ()
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300.0)
            
            CircleImage()
                .offset(y: -130) // Mueve la imagen 130 pixeles hacia arriba, pero su "posición base" se queda donde estaba
                .padding(.bottom, -130) // Mueve la "posición base" de la imagen, para que coincida con la nueva posición real que se definió con el offset.
            
            VStack(alignment: .leading) {
                Text("Turtle rock")
                    .font(.title)
                    .fontWeight(.semibold)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                // Los modificadores que apliquemos sobre un Stack, van a afectar a todas las vistas que se encuentren dentro.
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

/// La 2da estructura declara una vista previa de la escena que se construye en la 1ra estructura.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
