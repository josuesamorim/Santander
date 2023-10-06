//
//  MainOptionsView.swift
//  Santander
//
//  Created by Josué Amorim on 17/09/23.
//

import SwiftUI

struct MainOptionsView: View {
    
//    Image(systemName: "ellipsis.message")
//    Text("Ajuda")
//
//    Image(systemName: "lock")
//    Text("ID Santander")
//
//    Image(systemName: "rectangle.portrait.and.arrow.right")
//    Text("Acessar sua conta")
    
    var body: some View {
        VStack {
            HStack {
                
                CardView(systemImageName: "message", cardName: "Ajuda", imageBackgroundColor: Color.red, cardBackgroundColor: Color.white, cardLabelColor: Color.gray)
                
                Spacer()
                
                CardView(systemImageName: "lock", cardName: "ID Santander", imageBackgroundColor: Color.red, cardBackgroundColor: Color.white, cardLabelColor: Color.gray)
                
                Spacer()
                
                CardView(systemImageName: "rectangle.portrait.and.arrow.right", cardName: "Acessar sua conta", imageBackgroundColor: Color.white, cardBackgroundColor: Color("santanderLoginButton"), cardLabelColor: Color.white)
            }
            .frame(maxWidth: .infinity)
            //.padding(.horizontal, 10)
            //.frame(maxWidth: .infinity, maxHeight: 200, alignment: .center)
        }
        .frame(minWidth: 180, minHeight: 180)
        .padding(.horizontal, 10)
        
        
    }
}

struct MainOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        MainOptionsView()
    }
}
