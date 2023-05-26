//
//  WMToolbarItem.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

public enum WMToolbarItem {
  case logo(_ didTap: (() -> Void)? = nil)
  case magnifyingGlass(_ didTap: (() -> Void)? = nil)
  case leftArrow(_ didTap: (() -> Void)? = nil)
  case heart(_ didTap: (() -> Void)? = nil)
  case text(_ text: Text, _ didTap: (() -> Void)? = nil)
}

extension WMToolbarItem: Identifiable {
  public var id: UUID { .init() }
}
