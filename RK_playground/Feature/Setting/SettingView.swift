//
//  SettingView.swift
//  RK_playground
//
//  Created by Rocky on 4/8/24.
//

import SwiftUI
import ComposableArchitecture

struct SettingView: View {
    @Bindable var store: StoreOf<SettingFeature>
    
    var body: some View {
        Form {
            Toggle(
                "진동 피드백",
                isOn: $store.isHapticFeedbackEnable
            )
            Toggle(
                "알림 설정",
                isOn: $store.isNotificationEnable
            )
            TextField(
                "여기에 입력",
                text: $store.textFieldValue
            )
        }
    }
}

#Preview {
    SettingView(store: Store(initialState: SettingFeature.State(), reducer: {
        SettingFeature()
    }))
}
