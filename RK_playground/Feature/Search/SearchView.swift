//
//  SearchView.swift
//  RK_playground
//
//  Created by Rocky on 4/4/24.
//

import SwiftUI
 
struct SearchView: View {
    @State private var keyword = ""
    @State private var searchResults: [String] = []
    
    private let sampleRepoLists = [
        "Swift",
        "SwiftyJSON",
        "SwiftGuide",
        "SwiftterSwift",
        "MyStory",
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Search", text: self.$keyword)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("검색") {
                        self.searchResults = self.sampleRepoLists.filter {
                            $0.contains(self.keyword)
                        }
                    }
                }
                .padding()
                
                List {
                    ForEach(self.searchResults, id: \.self) { Text($0) }
                }
            }
            .navigationTitle("Search")
        }
    }
}

#Preview {
    SearchView()
}
