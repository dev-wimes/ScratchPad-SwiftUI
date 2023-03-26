//
//  ExpandableViewModifier1UIModel.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import SwiftUI

final class TargetedModifier1UIModel: ObservableObject, Equatable {
    static func == (lhs: TargetedModifier1UIModel, rhs: TargetedModifier1UIModel) -> Bool {
        lhs.color == rhs.color
        && lhs.font == rhs.font
    }
    
    @Published var color: Color = .black
    @Published var font: Font = .body
    
    init() { print("init \(String(describing: self))")}
    deinit { print("deinit \(String(describing: self))") }
}
