//
//  ExpandableViewModifier1PreferenceKey.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import SwiftUI

struct TargetedModifier1PreferenceKey: PreferenceKey {
  static var defaultValue: TargetedModifier1UIModel { .init() }
  
  static func reduce(value: inout TargetedModifier1UIModel, nextValue: () -> TargetedModifier1UIModel) {
    value = nextValue()
  }
}
