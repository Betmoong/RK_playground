//
//  TCA_playgroundApp.swift
//  TCA_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_playgroundApp: App {
    var body: some Scene {
        WindowGroup {
            CounterView(store: Store(initialState: CounterFeature.State()) {
                CounterFeature()
            })
        }
    }
}
