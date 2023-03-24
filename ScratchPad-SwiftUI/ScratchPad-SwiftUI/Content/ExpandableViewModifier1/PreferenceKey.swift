//
//  ExpandableViewModifier1PreferenceKey.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import SwiftUI

struct ExpandableViewModifier1PreferenceKey: PreferenceKey {
    static var defaultValue: ExpandableViewModifier1UIModel { .init() }
    
    static func reduce(value: inout ExpandableViewModifier1UIModel, nextValue: () -> ExpandableViewModifier1UIModel) {
        value = nextValue()
    }
}
