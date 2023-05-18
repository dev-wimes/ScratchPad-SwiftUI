//
//  WMTabItem.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabItem {
  let index: Int
  let icon: Image?
  let title: String?
}

extension WMTabItem: Hashable {
  func hash(into hasher: inout Hasher) {
    hasher.combine(index)
  }
}
