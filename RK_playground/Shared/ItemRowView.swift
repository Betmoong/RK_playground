//
//  ItemRowView.swift
//  RK_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI
import ComposableArchitecture

struct ItemRowView: View {
    
    let itemData: ItemData
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            ZStack {
                Circle()
                    .fill(Color.rkMainColor)
                
                Text("\(itemData.id)")
                    .font(.custom("Helvetica Bold", fixedSize: 18))
                    .foregroundStyle(Color.white)
            }
            .frame(width: 51, height: 60)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(itemData.title)
                    .fontWeight(.semibold)
                    .font(.headline)
                    .foregroundColor(Color.black)
                Text("\(itemData.caption)")
                    .font(.footnote)
                    .lineLimit(100)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(-3)
                    .foregroundColor(Color.black.opacity(0.6))
                HStack {
                    (Text("Created at ") + Text("\(itemData.date.dateToString(style: .medium))").foregroundColor(Color.black))
                        .font(.caption)
                        .foregroundColor(Color.orange.opacity(0.8))
                }
                .padding(.top, 6)
            }
        }
    }
}


#Preview {
    ItemRowView(itemData: ItemData(id: 1,
                                   section: .tca,
                                   createDate: "2024-04-03",
                                   title: "Counter",
                                   caption: "This is Counter with TCA",
                                   view: RKView(CounterView(store: Store(initialState: CounterFeature.State()) {
        CounterFeature()
    }))))
    .background(Color.rkBackground)
}
