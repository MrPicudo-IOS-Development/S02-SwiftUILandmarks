/* CircleImage.swift --> Landmarks. Created by Miguel Torres on 07/03/23. */

import SwiftUI

/// Define la vista que queremos para las imágenes de cada lugar, como su tamaño, forma, ubicación en assets, etc.
struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4.0)
            }
            .shadow(radius: 7.0)
    }
}

/// Vista previa de la escena que crea la estructura CircleImage
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
