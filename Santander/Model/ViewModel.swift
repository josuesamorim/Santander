//
//  ViewModel.swift
//  Santander
//
//  Created by Josué Amorim on 18/09/23.
//

import Foundation

class ViewModel: ObservableObject {
    
    init(){
        createSettingList()
    }
    
    private var settingsList: [SettingsList] = []
    
    var getSettingsList: [SettingsList] {
           return settingsList
       }
    
    func createSettingList() {
        let list = SettingsListModel.getSettings
        
        
        for index in 0..<list.count {
            settingsList.append(SettingsList(id: index, settingName: list[index].settingName, settingImage: list[index].settingImage, settingDescription: list[index].settingDescription))
        }
    }
}

