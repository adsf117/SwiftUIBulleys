//
//  ContentView.swift
//  Shared
//
//  Created by Andres David Serrano Vivas on 27/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                IntructionText(text:"🎯🎯🎯\nPUT THE BULLEYE AS CLOSE AS YOU CAM TO")
                    .padding(.leading, 30.0)
                    .padding(.trailing, 30.0)
                BigNumberText(text:String(game.target))
                SliderView(sliderValue: $sliderValue)
               HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    
    }
}
