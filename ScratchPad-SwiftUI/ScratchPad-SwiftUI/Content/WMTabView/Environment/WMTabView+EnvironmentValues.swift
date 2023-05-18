//
//  WMTabView+EnvironmentValues.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

extension EnvironmentValues {
  var wmTabItemSelection: Binding<Int> {
    get { self[WMTabItemSelectionEnvironmentKey.self] }
    set { self[WMTabItemSelectionEnvironmentKey.self] = newValue }
  }
}

public extension EnvironmentValues {
  var wmTabVisibility: Binding<Bool> {
    get { self[WMTabViewVisibilityEnvironmentKey.self] }
    set { self[WMTabViewVisibilityEnvironmentKey.self] = newValue }
  }
}

