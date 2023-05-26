//
//  WMToolbarItemModifier.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

struct WMToolbarItemModifier: ViewModifier {
  private let leftItems: [WMToolbarItem]
  private let rightItems: [WMToolbarItem]

  init(leftItems: [WMToolbarItem], rightItems: [WMToolbarItem]) {
    self.leftItems = leftItems
    self.rightItems = rightItems
  }

  func body(content: Content) -> some View {
    content
      .navigationBarBackButtonHidden(true)
      .toolbar {
        ToolbarItemGroup(placement: .navigationBarLeading) {
          ItemBuilder(items: self.leftItems)
        }
        ToolbarItemGroup(placement: .navigationBarTrailing) {
          ItemBuilder(items: self.rightItems)
        }
      }
  }

  @ViewBuilder
  private func ItemBuilder(items: [WMToolbarItem]) -> some View {
    ForEach(items) {
      switch $0 {
      case let .logo(tapGesture):
        Image(systemName: "apple.logo")
          .resizable()
          .scaledToFill()
          .frame(height: 22)
          .onTapGesture { tapGesture?() }

      case let .magnifyingGlass(tapGesture):
        Image(systemName: "magnifyingglass")
          .resizable()
          .frame(width: 24, height: 24)
          .onTapGesture { tapGesture?() }

      case let .leftArrow(tapGesture):
        Image(systemName: "chevron.left")
          .resizable()
          .frame(width: 24, height: 24)
          .onTapGesture { tapGesture?() }

      case let .heart(tapGesture):
        Image(systemName: "heart.fill")
          .resizable()
          .frame(width: 24, height: 24)
          .onTapGesture { tapGesture?() }

      case let .text(text, tapGesture):
        text
          .font(.headline)
          .onTapGesture { tapGesture?() }
      }
    }
  }
}

