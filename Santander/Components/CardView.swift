//
//  CardView.swift
//  Santander
//
//  Created by Josué Amorim on 18/09/23.
//

import SwiftUI



struct CardView: View {
    
    var systemImageName: String
    var cardName: String
    var imageBackgroundColor: Color
    var cardBackgroundColor: Color
    var cardLabelColor: Color
    
    let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
    
    
    var body: some View {
           ZStack {
               shape.fill()
                   .foregroundColor(cardBackgroundColor)
               shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
               //shape.stroke(Color.gray)
               
               VStack(spacing: 10) {
                   Image(systemName: systemImageName)
                       .font(.system(size: DrawingConstants.imageFontScale))
                       .foregroundColor(imageBackgroundColor)
                       
                   
                   Text(cardName)
                       .font(DrawingConstants.textFontScale)
                       .foregroundColor(cardLabelColor)
                       .multilineTextAlignment(.center)
                       
               }
               //.padding()
           }
           .frame(minWidth: 100, maxWidth: 130, minHeight: 100, maxHeight: 101)
           .shadow(color: Color.black.opacity(0.2), radius: 5, x:0, y:2)
        //.frame(width: 100, height: 120, alignment: .center)
       }
}

struct DrawingConstants {
    static let cornerRadius: CGFloat = 7
    static let lineWidth: CGFloat = 0
    static let imageFontScale: CGFloat = 25
    static let textFontScale: Font = .system(size: 15)
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(systemImageName: "ellipsis.message", cardName: "Acessar sua conta", imageBackgroundColor: Color.red, cardBackgroundColor: Color.white, cardLabelColor: Color.gray)
    }
}
