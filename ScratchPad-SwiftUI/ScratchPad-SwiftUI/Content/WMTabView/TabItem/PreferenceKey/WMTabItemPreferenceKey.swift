//
//  WMTabItemPreferenceKey.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabItemPreferenceKey: PreferenceKey {
  static var defaultValue: [WMTabItem] { .init() }

  static func reduce(value: inout [WMTabItem], nextValue: () -> [WMTabItem]) {
    value.append(contentsOf: nextValue())
  }
}
