//
//  View+WMNavigation.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

public extension View {
  func wmNavigationTitle(_ title: Text) -> some View {
    return modifier(WMNavigationTitleModifier(title: title))
  }

  func wmToolbarItem(leftItems: [WMToolbarItem] = [], rightItems: [WMToolbarItem] = []) -> some View {
    return modifier(WMToolbarItemModifier(leftItems: leftItems, rightItems: rightItems))
  }

  func wmToolbarVisibility(_ visibile: Binding<Bool>) -> some View {
    return modifier(WMToolbarVisibilityModifier(visibile))
  }
}

