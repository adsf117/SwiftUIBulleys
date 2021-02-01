//
//  RoundView.swift
//  Bullseye
//
//  Created by Andres David Serrano Vivas on 1/02/21.
//

import SwiftUI

struct RoundImageViewStroked: View {
    var systemName : String
    var body: some View {
        Image(systemName : systemName)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0, antialiased: true)
                )
    }
}

struct RoundImageViewFilled: View {
    var systemName : String
    var body: some View {
        Image(systemName : systemName)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .background(Circle().fill(Color("ButtonFilledBackgoundColor")))
        
    }
}

struct PreviewsView: View {
    var body: some View {
        VStack{
            RoundImageViewStroked(systemName: "arrow.counterclockwise")
                .padding(1.0)
            RoundImageViewFilled(systemName: "list.dash")

        }
    }
}
struct RoundView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewsView()
        PreviewsView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)

    }
}
