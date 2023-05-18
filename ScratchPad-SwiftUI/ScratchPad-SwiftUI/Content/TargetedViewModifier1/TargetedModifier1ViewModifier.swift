//
//  ViewModifiers.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import SwiftUI

struct TargetedModifier1ColorModifier: ViewModifier {
  private let color: Color
  init(color: Color) { self.color = color }
  
  func body(content: Content) -> some View {
    content
      .onPreferenceChange(TargetedModifier1PreferenceKey.self) { model in
        model.color = self.color
      }
  }
}

struct TargetedModifier1FontModifier: ViewModifier {
  
  private let font: Font
  init(font: Font) { self.font = font }
  
  func body(content: Content) -> some View {
    content
      .onPreferenceChange(TargetedModifier1PreferenceKey.self) { model in
        model.font = self.font
      }
  }
}
