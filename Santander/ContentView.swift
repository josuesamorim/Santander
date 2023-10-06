//
//  ContentView.swift
//  Santander
//
//  Created by Josué Amorim on 17/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            HeaderBarView()
            ScrollView {
                LoanView()
                MainOptionsView()
                
            }
        }
        .background(Color("santanderBackground"))
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
