//
//  View+WMTabView.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

public extension View {
  func wmTabItem(
    index: Int,
    icon: Image? = nil,
    title: String? = nil
  ) -> some View {
    return modifier(WMTabItemViewModifier(
      index: index,
      icon: icon,
      title: title
    ))
  }

  func wmTabViewEnableColor(_ color: Color) -> some View {
    return modifier(WMTabEnableColorViewModifier(color: color))
  }

  func wmTabViewDisableColor(_ color: Color) -> some View {
    return modifier(WMTabDisableColorViewModifier(color: color))
  }

  func wmTabViewStyle(_ style: WMTabViewStyle) -> some View {
    return modifier(WMTabViewStyleViewModifier(style: style))
  }

  func wmTabItemStyle(_ style: WMTabItemStyle) -> some View {
    return modifier(WMTabItemStyleViewModifier(style: style))
  }
}

