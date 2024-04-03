//
//  ContentView.swift
//  TCA_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI
import ComposableArchitecture

public struct ContentView: View {
    
    private var groupedItems: [ItemSection: [ItemData]] {
        Dictionary(grouping: ItemsProvider.shared.items, by: { $0.section })
    }
    
    struct SectionHeader: View {
        let title: String
        var body: some View {
            Text(title).textCase(nil)
        }
    }
    
    private func sectionView(for section: ItemSection, items: [ItemData]) -> some View {
        Section(header: SectionHeader(title: section.displayName)) {
            ForEach(items) { item in
                NavigationLink {
                    item.view
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarColor(backgroundColor: Color.clear,
                                            titleColor: Color.green)
                        .onAppear {
                            vibration()
                        }
                        .background(Color.rkBackground)
                } label: {
                    ItemRowView(itemData: item)
                }
            }
        }
    }
    
    public var body: some View {
        NavigationView {
            List {
                ForEach(ItemSection.allCases, id: \.self) { section in
                    if let items = groupedItems[section] {
                        sectionView(for: section, items: items)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("RK's playground")
        }
    }
    
}

#Preview {
    ContentView()
}
