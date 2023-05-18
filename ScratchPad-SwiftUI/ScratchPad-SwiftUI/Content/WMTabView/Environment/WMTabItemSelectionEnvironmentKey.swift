//
//  WMTabItemSelectionEnvironmentKey.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabItemSelectionEnvironmentKey: EnvironmentKey {
  static let defaultValue: Binding<Int> = .constant(0)
}

