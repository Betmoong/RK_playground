//
//  SearchFeature.swift
//  RK_playground
//
//  Created by Rocky on 4/4/24.
//

import ComposableArchitecture

@Reducer
struct SearchFeature {
    
    @ObservableState
    struct State {
        var keyword = ""
        var searchResults = [String]()
    }
    
    enum Action {
        case keywordChanged(String)
        case serchButtonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .keywordChanged(let keyword):
                state.keyword = keyword
                return .none
            case .serchButtonTapped:
                state.searchResults = self.sampleRepoLists.filter {
                    $0.contains(state.keyword)
                }
                return .none
            }
        }
    }
    
    private let sampleRepoLists = [
        "Swift",
        "SwiftyJSON",
        "SwiftGuide",
        "SwiftterSwift",
        "MyStory",
    ]
    
}
