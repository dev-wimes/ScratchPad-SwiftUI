//
//  View+.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

public extension View {
  @ViewBuilder
  func visibility(_ visibility: WMVisibility) -> some View {
    if visibility == .visible { self }
    else if visibility == .invisible { hidden() }
    else {}
  }
}
