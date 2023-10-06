//
//  HeaderBarView.swift
//  Santander
//
//  Created by Josué Amorim on 17/09/23.
//

import SwiftUI

struct HeaderBarView: View {
    @State private var showSettings: Bool = false
    
    var body: some View {
        HStack {
            HStack {
                
//                Image(systemName: "line.3.horizontal")
//                    .foregroundColor(.white)
//                    .font(.custom("hamburguer", size: 25))
                
                settingsButton
                
                Spacer()
                
                Image("santander_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100, maxHeight: 50)
                    
                
                Spacer()
                
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(.white)
                    .font(.custom("hamburguer", size: 20))
            
                    
            }
            .padding(.horizontal, 20)
            
        }
        .background(Color("santanderHeaderBar"))
        .frame(maxWidth: .infinity, maxHeight: 50)
        
    
    }
    
    private var settingsButton: some View {
        Button(action: {
            showSettings.toggle()
        }) {
            Image(systemName: "line.3.horizontal")
                .foregroundColor(Color.white)
                .font(.custom("hamburguer", size: 25))
        }
        .sheet(isPresented: $showSettings) {
            if #available(iOS 16, *) {
                SettingsListView()
                    //.presentationDetents([.medium, .large])
            } else {
                SettingsListView()
            }
        }
    }
    
    
    
}



struct HeaderBarView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBarView()
    }
}
