//
//  TabItemViewModifier.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabItemViewModifier: ViewModifier {
  @Environment(\.wmTabItemSelection) var selectedIndex

  let index: Int
  let icon: Image?
  let title: String?

  func body(content: Content) -> some View {
    Group {
      if self.index == self.selectedIndex.wrappedValue {
        content
      } else {
        Color.clear
      }
    }
    .preference(key: WMTabItemPreferenceKey.self, value: [WMTabItem(index: self.index, icon: self.icon, title: self.title)])
  }
}

