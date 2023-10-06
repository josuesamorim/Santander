//
//  Colors.swift
//  Santander
//
//  Created by Josué Amorim on 17/09/23.
//

import SwiftUI

extension Color {
    static let santanderHeaderBar = Color("")
    static let santanderloan = Color("")
    static let santanderBackground = Color("")
}

extension Color {
    static func colorForString(_ stringValue: String) -> Color {
        switch stringValue {
        case "acessarConta":
            return Color.red
        case "outrosCards":
            return Color.white
        default:
            return Color.white
        }
    }
}
