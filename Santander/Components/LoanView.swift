//
//  loanView.swift
//  Santander
//
//  Created by Josué Amorim on 17/09/23.
//

import SwiftUI

struct LoanView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            
            Image("consignado")
                .resizable()
                //.aspectRatio(contentMode: .fit)
                .frame(height: 400)
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 30) {
               
                VStack(alignment: .leading) {
                    Text("Precisando de dinheiro?")
                        .fontWeight(.bold)
                    Text("Agora você tem mais limite!")
                        .fontWeight(.bold)
                }
                .font(.body)

                
                VStack(alignment: .leading) {
                    Text("O consignado tem o juro mais barato do mercado e pode ser a solução ideal para você!")
                        .font(.footnote)
                }
                .frame(maxWidth: 190)
                
                VStack {
                    Button(action: {
                           // Ação a ser executada quando o botão for pressionado
                        
                       }) {
                           Text("Contrate agora")
                               .fontWeight(.bold)
                               .font(Font.system(size: 13))
                               .padding()
                               .frame(width: 130, height: 30)
                               .background(Color.white)
                               .foregroundColor(.red)
                               .cornerRadius(4)
                       }
                }
            }
            .padding(.horizontal, 10)
            
            
        }
        .frame(height: 400)
        .foregroundColor(.white)
        .background(Color.gray)
    }
}

struct loanView_Previews: PreviewProvider {
    static var previews: some View {
        LoanView()
    }
}
