//
//  ItemData.swift
//  RK_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI

enum ItemSection: Int, CaseIterable {
    case tca = 0
    case animation
    
    var displayName: String {
        switch self {
        case .tca: return "TCA"
        case .animation: return "Animation"
        }
    }
}

struct ItemData: Identifiable {
    
    private(set) var id: Int32
    private(set) var section: ItemSection
    private(set) var createDate: String
    private(set) var title: String
    private(set) var caption: String
    private(set) var view: RKView

    var navigationTitle: String {
        return "[\(self.section)]" + " - " + self.title + " - " + self.caption
    }
    
    var itemTitle: String {
        return "item\(self.id)"
    }

    var date: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.timeZone = NSTimeZone(name:"UTC") as TimeZone?
        let date = dateFormatter.date(from: createDate)
        return date!
    }
    
    init(id: Int32, section: ItemSection, createDate: String, title: String, caption: String, view: RKView) {
        self.id = id
        self.section = section
        self.createDate = createDate
        self.title = title
        self.caption = caption
        self.view = view
    }
}

extension Date {
    var day: String {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: self)
        let dayOfMonth = components.day
        return "\(String(format:"%02d", dayOfMonth!))"
    }
    
    var week: String {
        let weekTitles = ["일", "월", "화", "수", "목", "금", "토"]
        let calendar = Calendar.current
        let components = calendar.dateComponents([.weekday], from: self)
        let dayOfWeek = components.weekday
        return weekTitles[dayOfWeek! - 1]
    }
}

