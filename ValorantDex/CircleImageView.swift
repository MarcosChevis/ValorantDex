//
//  CircleImageView.swift
//  ValorantDex
//
//  Created by Marcos Chevis on 29/09/22.
//

import SwiftUI

struct CircleImage: View {
    var path: String
    
    init(_ path: String) {
        self.path = path
    }
    
    var body: some View {
        ZStack {
            Color.white
            Image(path)
                .resizable()
        }
        .clipShape(Circle())
        .overlay {
            Circle().stroke(.white, lineWidth: 4)
        }
        .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage("Brimstone")
    }
}
