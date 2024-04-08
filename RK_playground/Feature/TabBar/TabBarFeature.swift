//
//  TabBarFeature.swift
//  RK_playground
//
//  Created by Rocky on 4/8/24.
//

import ComposableArchitecture

@Reducer
struct TabBarFeature {
    
    struct State {
        var tab1 = CounterFeature.State()
        var tab2 = SearchFeature.State()
    }
    
    enum Action {
        case tab1(CounterFeature.Action)
        case tab2(SearchFeature.Action)
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: \.tab1, action: \.tab1) {
            CounterFeature()
        }
        
        Scope(state: \.tab2, action: \.tab2) {
            SearchFeature()
        }
        
        Reduce { state, action in
            return .none
        }
    }
}
