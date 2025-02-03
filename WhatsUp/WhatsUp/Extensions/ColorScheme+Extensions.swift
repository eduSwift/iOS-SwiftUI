//
//  Color.swift
//  WhatsUp
//
//  Created by Eduardo Rodrigues on 03.02.25.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.currentIndex = hex.hasPrefix("#") ? hex.index(after: hex.startIndex) : hex.startIndex
        
        var hexValue: UInt64 = 0
        scanner.scanHexInt64(&hexValue)
        
        let red = Double((hexValue >> 16) & 0xFF) / 255.0
        let green = Double((hexValue >> 8) & 0xFF) / 255.0
        let blue = Double(hexValue & 0xFF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}
