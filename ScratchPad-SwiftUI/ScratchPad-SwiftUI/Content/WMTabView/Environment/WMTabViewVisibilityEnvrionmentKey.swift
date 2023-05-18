//
//  WMTabViewVisibilityEnvrionmentKey.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabViewVisibilityEnvironmentKey: EnvironmentKey {
  static let defaultValue: Binding<Bool> = .constant(true)
}
