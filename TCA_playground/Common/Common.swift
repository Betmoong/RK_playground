//
//  Common.swift
//  TCA_playground
//
//  Created by Rocky on 4/3/24.
//

import SwiftUI

public func vibration(_ style: UIImpactFeedbackGenerator.FeedbackStyle = .soft) {
    let feedback = UIImpactFeedbackGenerator(style: style)
    feedback.prepare()
    feedback.impactOccurred()
}
