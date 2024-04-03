//
//  ItemsProvider.swift
//  RK_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI
import ComposableArchitecture

class ItemsProvider {
    
    static let shared = ItemsProvider()
    
    var items: [ItemData] {
        [
            ItemData(id: 1,
                     section: .tca,
                     createDate: "2024-04-03",
                     title: "Counter",
                     caption: "Counter with TCA",
                     view:RKView(CounterView(store: Store(initialState: CounterFeature.State()) { CounterFeature() }))),
            
            ItemData(id: 2,
                     section: .animation,
                     createDate: "2024-04-03",
                     title: "Counter2",
                     caption: "Counter with TCA",
                     view:RKView(CounterView(store: Store(initialState: CounterFeature.State()) { CounterFeature() }))),
        ]
    }
}
