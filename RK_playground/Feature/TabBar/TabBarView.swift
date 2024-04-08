//
//  TabBarView.swift
//  RK_playground
//
//  Created by Rocky on 4/8/24.
//

import SwiftUI
import ComposableArchitecture

struct TabBarView: View {
    let store: StoreOf<TabBarFeature>
    
    var body: some View {
        TabView {
            CounterView(store: store.scope(state: \.tab1, action: \.tab1))
                .tabItem { Text("Counter") }
            
            SearchView(store: store.scope(state: \.tab2, action: \.tab2))
                .tabItem { Text("Search") }
        }
    }
}

#Preview {
    TabBarView(store: Store(initialState: TabBarFeature.State(), reducer: {
        TabBarFeature()
    }))
}
