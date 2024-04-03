//
//  View+Extension.swift
//  RK_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI

extension View {
    
    func animationsDisabled() -> some View {
        return self.transaction { (tx: inout Transaction) in
            tx.disablesAnimations = true
            tx.animation = nil
        }
    }

    func navigationBarColor(backgroundColor: Color?, titleColor: Color?) -> some View {
        let background: UIColor? = backgroundColor != nil ? UIColor(backgroundColor!) : nil
        let title: UIColor? = titleColor != nil ? UIColor(titleColor!) : nil
        return self.modifier(NavigationBarModifier(backgroundColor: background, titleColor: title))
    }

}
