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
    
    enum Action: BindableAction {
        case binding(BindingAction<State>)
    }
    
    var body: some ReducerOf<Self> {
        BindingReducer()
        
        Reduce { state, action in
            switch action {
            // 이러한 바인딩 위에 추가적인 도메인 로직을 적용하고 싶은 경우 아래 처럼 사용
            /*
            case .binding(\.textFieldValue):
                print(state.textFieldValue)
                return .none
             */
            case .binding(_):
                return .none
            }
        }
    }
}
