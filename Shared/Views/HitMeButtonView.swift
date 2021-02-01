//
//  ButtonView.swift
//  Bullseye
//
//  Created by Andres David Serrano Vivas on 1/02/21.
//

import SwiftUI

struct HitMeButtonView: View {
    @Binding var alertIsVisible : Bool
    @Binding var sliderValue : Double
    @Binding var game : Game


    var body: some View {
        Button(action: {
            self.alertIsVisible = true
        }, label: {
            Text("Hit me")
                .font(.title3)
                .bold()
        })
        .padding(20.0)
        .background(
            ZStack {
             Color("buttoncolor")
             LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
        })
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 2.0, antialiased: true)
            )
       
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .alert(isPresented: $alertIsVisible, content: {
            let intSliderValue = Int(self.sliderValue.rounded())
            return Alert(title: Text("Nice Job!"),
                         message:Text("the slider values is: \(intSliderValue). \n"+"Your scored \(self.game.points(siderValue:intSliderValue)) this round!"),
                         dismissButton: .default(Text("Ok")))
        })
    }
}
