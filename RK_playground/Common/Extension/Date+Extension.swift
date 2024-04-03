//
//  Date+Extension.swift
//  RK_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI

public extension Date {
    func dateToString(style: DateFormatter.Style = .medium) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = style
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: self)
    }
}
