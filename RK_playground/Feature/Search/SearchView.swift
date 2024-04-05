//
//  SearchView.swift
//  RK_playground
//
//  Created by Rocky on 4/4/24.
//

import SwiftUI
import ComposableArchitecture
 
struct SearchView: View {
    let store: StoreOf<SearchFeature>
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Search",
                              text: Binding(
                                get: {
                                    store.keyword
                                },
                                set: { store.send(.keywordChanged($0)) }
                              )
                    )
                    .textFieldStyle(.roundedBorder)
                    
                    Button("검색") {
                        store.send(.serchButtonTapped)
                    }
                }
                .padding()
                
                List {
                    ForEach(store.searchResults, id: \.self) { Text($0) }
                }
            }
            .navigationTitle("Search")
        }
    }
}

#Preview {
    SearchView(
        store: Store(initialState: SearchFeature.State(), reducer: {
            SearchFeature()
        })
    )
}
