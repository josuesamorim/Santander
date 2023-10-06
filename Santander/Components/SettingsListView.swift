//
//  SettingsListView.swift
//  Santander
//
//  Created by Josué Amorim on 18/09/23.
//

import SwiftUI

struct SettingsListView: View {
    
    private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            settingsList
        }
    }
    
    private var settingsList: some View {
        VStack {
            
            HStack {
                
                Image(systemName: "xmark")
                    .font(.system(size: 20))
                
                Spacer()
                
                Text("Conheça também")
                    .bold()
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding(.leading, 20)
            
            
            List {
                ForEach(viewModel.getSettingsList, id: \.id) { setting in
                    settingRow(for: setting)
                }
            }
            .listStyle(PlainListStyle())
            
        }
        //.background(Color("santanderBackground"))
    }
    

    
    private func settingRow(for setting: SettingsList) -> some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 10) {
                HStack(alignment: .center) {
                    Image(systemName: setting.settingImage)
                        .foregroundColor(Color.red)

                    
                    Text(setting.settingName)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .font(.body)
                }
                
                Text(setting.settingDescription)
                    
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical)
    }
}

struct SettingsList: Identifiable, Hashable {
    var id: Int
    var settingName: String
    var settingImage: String
    var settingDescription: String
}

struct SettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListView()
    }
}
