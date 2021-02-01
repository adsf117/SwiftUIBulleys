//
//  SliderView.swift
//  Bullseye
//
//  Created by Andres David Serrano Vivas on 1/02/21.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue : Double
    var body: some View {
        HStack {
            SliderLabelView(text:"1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelView(text:"100")
               
        }
    }
}
