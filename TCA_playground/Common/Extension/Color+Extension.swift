//
//  Color+Extension.swift
//  TCA_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI

extension Color {
    static var rkBackground: Color = .init(hex: "f2f2f7")
    static var rkMainColor: Color = .init(hex: "84c4ff")
}

extension Color {
    
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
    
}
