//
//  WMTabItemStyle.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

public protocol WMTabItemStyle {
  func tabItem(
    icon: Image?,
    title: Text?,
    enabledColor: Color,
    disabledColor: Color,
    isSelected: Bool
  ) -> AnyView
}

