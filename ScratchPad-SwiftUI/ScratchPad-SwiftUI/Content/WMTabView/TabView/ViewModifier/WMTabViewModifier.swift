//
//  WMTabViewModifier.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabEnableColorViewModifier: ViewModifier {
  private let color: Color

  init(color: Color) {
    self.color = color
  }

  func body(content: Content) -> some View {
    content
      .onPreferenceChange(WMTabViewPreferenceKey.self) { model in
        model.enableColor = color
      }
  }
}

struct WMTabDisableColorViewModifier: ViewModifier {
  private let color: Color

  init(color: Color) {
    self.color = color
  }

  func body(content: Content) -> some View {
    content
      .onPreferenceChange(WMTabViewPreferenceKey.self) { model in
        model.disableColor = color
      }
  }
}

struct WMTabViewStyleViewModifier: ViewModifier {
  private let style: WMTabViewStyle

  init(style: WMTabViewStyle) { self.style = style }

  func body(content: Content) -> some View {
    content
      .onPreferenceChange(WMTabViewPreferenceKey.self) { model in
        model.tabViewStyle = style
      }
  }
}

struct WMTabItemStyleViewModifier: ViewModifier {
  private let style: WMTabItemStyle

  init(style: WMTabItemStyle) { self.style = style }

  func body(content: Content) -> some View {
    content
      .onPreferenceChange(WMTabViewPreferenceKey.self) { model in
        model.tabItemStyle = style
      }
  }
}
