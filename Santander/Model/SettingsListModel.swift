//
//  SettingsListModel.swift
//  Santander
//
//  Created by Josué Amorim on 18/09/23.
//

import Foundation
import SwiftUI

struct SettingsListModel {
    
    var settingName: String
    var settingImage: String
    var settingDescription: String
    
    init(settingName: String, settingImage: String, settingDescription: String) {
        self.settingName = settingName
        self.settingImage = settingImage
        self.settingDescription = settingDescription
    }
    
    static var getSettings: Array<SettingsListModel> {
        return SettingsListModel.settings
    }
    
    static let settings: Array<SettingsListModel> = [
        SettingsListModel(settingName: "Way", settingImage: "creditcard", settingDescription: "Gerencie seus cartões"),
        SettingsListModel(settingName: "Esfera", settingImage: "e.square", settingDescription: "Rede de parcerias do Santander"),
        SettingsListModel(settingName: "Toro Investimentos", settingImage: "apps.iphone", settingDescription: "Invista fácil e sem corretagem"),
        SettingsListModel(settingName: "Sim", settingImage: "rectangle.and.hand.point.up.left.filled", settingDescription: "Empréstimo rápido e 100% digital"),
        SettingsListModel(settingName: "emDia", settingImage: "dollarsign.square", settingDescription: "Negocie dívidas sem complicações")
    ]
}
