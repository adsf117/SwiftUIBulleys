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
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLEYE AS CLOSE AS YOU CAM TO")
                .kerning(2.0)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .fontWeight(.black)
                .font( .largeTitle)
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()

            }
            Button(action: {
                print("Hello")
                self.alertIsVisible = true
            }, label: {
                Text("Hit me")
            })
            .alert(isPresented: $alertIsVisible, content: {
                let intSliderValue = Int(self.sliderValue.rounded())
                return Alert(title: Text("Nice Job!"),
                             message:Text("the slider values is: \(intSliderValue). \n"+"Your scored \(self.game.points(siderValue:intSliderValue)) this round!"),
                             dismissButton: .default(Text("Ok")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    
    }
}
