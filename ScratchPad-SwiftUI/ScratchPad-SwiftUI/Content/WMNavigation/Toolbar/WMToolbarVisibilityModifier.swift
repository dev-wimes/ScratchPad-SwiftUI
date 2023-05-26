//
//  WMToolbarVisibilityModifier.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

struct WMToolbarVisibilityModifier: ViewModifier {
  @Binding var visibile: Bool

  init(_ visibile: Binding<Bool>) { _visibile = visibile }

  func body(content: Content) -> some View {
    content
      .navigationBarBackButtonHidden(true)
      .toolbar(self.visibile ? .visible : .hidden)
  }
}
