//
//  WMTabViewPreferenceKey.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabViewPreferenceKey: PreferenceKey {
  static var defaultValue: WMTabUIModel { .init() }

  static func reduce(value: inout WMTabUIModel, nextValue: () -> WMTabUIModel) {
    value = nextValue()
  }
}

