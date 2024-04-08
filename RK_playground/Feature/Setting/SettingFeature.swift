//
//  SettingFeature.swift
//  RK_playground
//
//  Created by Rocky on 4/8/24.
//

import ComposableArchitecture

@Reducer
struct SettingFeature {
    
    @ObservableState
    struct State {
        var isHapticFeedbackEnable: Bool = true
        var isNotificationEnable: Bool = true
        var textFieldValue: String = ""
    }
    
    enum Action {
        case isHapticFeedbackEnableChanged(Bool)
        case isNotificationEnableChanged(Bool)
        case textFieldChanged(String)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .isHapticFeedbackEnableChanged(let isEnable):
                state.isHapticFeedbackEnable = isEnable
                return .none
            case .isNotificationEnableChanged(let isEnable):
                state.isNotificationEnable = isEnable
                return .none
            case .textFieldChanged(let text):
                state.textFieldValue = text
                return .none
            }
        }
    }
    
}
