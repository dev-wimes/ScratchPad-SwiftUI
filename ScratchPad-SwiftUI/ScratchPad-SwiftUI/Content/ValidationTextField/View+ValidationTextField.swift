//
//  View+ValidationTextField.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

public extension View {
  func placeHolder(
    when isShow: Bool,
    alignment: Alignment = .leading,
    @ViewBuilder placeholder: () -> some View
  ) -> some View {
    ZStack(alignment: alignment) {
      if isShow {
        placeholder()
      }
      self
    }
  }
}
