//
//  WMTabView.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

public struct WMTabView<Content: View>: View {
  @StateObject private var model: WMTabUIModel
  @Binding private var selection: Int
  @Binding var isShow: Bool

  private let content: Content

  public init(
    selection: Binding<Int>,
    isShow: Binding<Bool> = .constant(true),
    @ViewBuilder content: () -> Content
  ) {
    _selection = selection
    _isShow = isShow
    _model = .init(wrappedValue: .init())
    self.content = content()
  }

  public var body: some View {
    GeometryReader { geometry in
      VStack(spacing: 0) {
        ZStack {
          self.content
            .environment(\.wmTabItemSelection, self.$selection)
        }
        self.model.tabViewStyle.tabView(with: geometry) {
          .init(TabItems)
        }
        .visibility(self.isShow ? .visible : .gone)
      }
    }
    .environment(\.wmTabVisibility, self.$isShow)
    .preference(key: WMTabViewPreferenceKey.self, value: self.model)
    .onPreferenceChange(WMTabItemPreferenceKey.self) { items in
      self.model.setItems(items)
    }
  }
}

// MARK: - View

extension WMTabView {
  @ViewBuilder
  private var TabItems: some View {
    HStack {
      ForEach(self.model.tabItems, id: \.self) { item in
        self.model.tabItemStyle.tabItem(
          icon: item.icon,
          title: item.title != nil ? Text(item.title ?? "") : nil,
          enabledColor: self.model.enableColor,
          disabledColor: self.model.disableColor,
          isSelected: self.selection == item.index
        )
        .onTapGesture { [item] in
          self.selection = item.index
        }
      }
      .frame(maxWidth: .infinity)
    }
  }
}

