//
//  ShapesView.swift
//  Bullseye
//
//  Created by Andres David Serrano Vivas on 1/02/21.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        VStack{
            Circle()
                .fill(Color.blue)
                .frame(width: 200, height: 100)
        }
        .background(Color.green)

        
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
