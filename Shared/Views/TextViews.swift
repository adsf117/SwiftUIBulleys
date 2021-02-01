//
//  TextViews.swift
//  Bullseye
//
//  Created by Andres David Serrano Vivas on 1/02/21.
//

import SwiftUI

struct IntructionText: View {
    var text : String
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .kerning(2.0)
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            
    }
}


struct BigNumberText: View {
    var text : String
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
            .font( .largeTitle)
            
    }
}

struct SliderLabelView: View {
    var text : String

    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35)
    }
}


struct NumberTextView: View {
    var title : String
    var text : String

    var body: some View {
        VStack(spacing :5) {
            LabelText(text :title)
            RoundLabelText(text : text)
        }
    }
}

struct LabelText: View {
    var text : String
    var body: some View {
        Text(text)
            .kerning(1.5)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
            .font( .caption)
            
    }
}

struct RoundLabelText: View {
    var text : String
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font( .title3)
            .frame(width: 68.0, height: 56.0)
            .foregroundColor(Color("TextColor"))
            .overlay(RoundedRectangle(cornerRadius: 21.0).stroke(lineWidth: 2.0).foregroundColor(Color("ButtonStrokeColor")))
            
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        IntructionText(text:"🎯🎯🎯\nPUT THE BULLEYE AS CLOSE AS YOU CAM TO")
        BigNumberText(text:"20")
    }
}
