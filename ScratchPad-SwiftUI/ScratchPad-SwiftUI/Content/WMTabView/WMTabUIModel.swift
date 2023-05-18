//
//  WMTabUIModel.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

final class WMTabUIModel: ObservableObject {
  @Published var tabItems: [WMTabItem] = []
  @Published var enableColor: Color = .black
  @Published var disableColor: Color = .gray
  @Published var tabViewStyle: WMTabViewStyle = WMTabViewDefaultStyle()
  @Published var tabItemStyle: WMTabItemStyle = WMTabItemDefaultStyle()

  init() { debugPrint("\(String(describing: self)) init") }
  deinit { debugPrint("\(String(describing: self)) deinit") }

  func setItems(_ items: [WMTabItem]) {
    self.tabItems = items
  }
}

extension WMTabUIModel: Equatable {
  static func == (lhs: WMTabUIModel, rhs: WMTabUIModel) -> Bool {
    lhs.tabItems == rhs.tabItems
      && lhs.enableColor == rhs.enableColor
      && lhs.disableColor == rhs.disableColor
  }
}

