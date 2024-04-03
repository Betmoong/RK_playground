//
//  RKView.swift
//  RK_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI

public struct RKView: View {
    private let internalView: AnyView
    public let originalView: Any
    public init<V: View>(_ view: V) {
        internalView = AnyView(view)
        originalView = view
    }
    
    public var body: some View {
        internalView
    }
    
    public var viewName: String {
        return "\(type(of: self.originalView.self))"
    }
}

#Preview {
    RKView(Text("RKView"))
}
