//
//  WMTabItemDefaultStyle.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabItemDefaultStyle: WMTabItemStyle {
  func tabItem(
    icon: Image?,
    title: Text?,
    enabledColor: Color,
    disabledColor: Color,
    isSelected: Bool
  ) -> AnyView {
    AnyView(
      VStack(spacing: 5) {
        icon?
          .renderingMode(.template)

        title?
          // TODO: (wimes) tab bar font 정해지면 수정 .pretendardStyle()
          .font(.system(size: 9, weight: .medium))
      }
      .foregroundColor(isSelected ? enabledColor : disabledColor)
      .frame(width: 48, height: 48)
      .contentShape(Rectangle())
    )
  }
}
