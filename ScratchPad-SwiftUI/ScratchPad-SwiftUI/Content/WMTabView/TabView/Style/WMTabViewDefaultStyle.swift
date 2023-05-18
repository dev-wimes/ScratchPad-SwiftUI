//
//  WMTabViewDefaultStyle.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabViewDefaultStyle: WMTabViewStyle {
  private let tabHeight: CGFloat = 48

  func tabView(
    with _: GeometryProxy,
    itemContainer: @escaping () -> AnyView
  ) -> AnyView {
    AnyView(
      VStack(spacing: 0) {
        VStack {
          itemContainer()
        }
        .background(.white)
      }
      .frame(height: self.tabHeight)
    )
  }
}

