//
//  WMNavigationTitleModifier.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

struct WMNavigationTitleModifier: ViewModifier {
  private let title: Text

  init(title: Text) { self.title = title }

  func body(content: Content) -> some View {
    content
      .navigationBarBackButtonHidden(true)
      .navigationBarTitleDisplayMode(.inline)
      .navigationTitle(self.title)
  }
}

