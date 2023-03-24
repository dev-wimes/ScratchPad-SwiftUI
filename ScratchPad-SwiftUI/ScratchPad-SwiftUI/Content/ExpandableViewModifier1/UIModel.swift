//
//  ExpandableViewModifier1UIModel.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import SwiftUI

final class ExpandableViewModifier1UIModel: ObservableObject, Equatable {
    static func == (lhs: ExpandableViewModifier1UIModel, rhs: ExpandableViewModifier1UIModel) -> Bool {
        lhs.color == rhs.color
        && lhs.font == rhs.font
    }
    
    @Published var color: Color = .black
    @Published var font: Font = .body
    
    init() { }
    deinit { print("deinit") }
}
