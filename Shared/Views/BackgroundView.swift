//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Andres David Serrano Vivas on 1/02/21.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game : Game
    var body: some View {
        VStack {
            TopView()
            Spacer()
            BottonView(game:$game)
        }.padding()
        .background(Color("background").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}


struct TopView: View {
    var body: some View {
        HStack{
            RoundImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            RoundImageViewFilled(systemName: "list.dash")
        }
    }
}

struct BottonView: View {
    @Binding var game : Game

    var body: some View {
        HStack{
            NumberTextView(title: "Score", text: String(game.score))
            Spacer()

            NumberTextView(title: "Round",text: String(game.round))
            
        }

    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
