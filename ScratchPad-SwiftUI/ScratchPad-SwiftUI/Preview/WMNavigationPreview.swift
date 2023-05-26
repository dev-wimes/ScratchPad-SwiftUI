//
//  WMNavigationPreview.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

struct WMNavigationPreview: View {
  var body: some View {
    NavigationLink(destination: WMNavigationPreview2()) {
      Text("WMNavigationPreview")
    }
    .wmNavigationTitle(.init("WMNavigationPreview"))
    .wmToolbarItem(
      leftItems: [.logo() { debugPrint("tap logo") }],
      rightItems: [.magnifyingGlass() { debugPrint("tap magnifyingGlass") }]
    )
  }
}

struct WMNavigationPreview2: View {
  var body: some View {
    NavigationLink(destination: WMNavigationPreview3()) {
      Text("WMNavigationPreview2")
    }
    .wmToolbarItem(
      leftItems: [.leftArrow()  { debugPrint("tap leftArrow") }],
      rightItems: [.heart()  { debugPrint("tap heart") }]
    )
  }
}

struct WMNavigationPreview3: View {
  @State var visible: Bool = true
  var body: some View {
    Text("WMNavigationPreview3")
      .wmToolbarItem(leftItems: [.logo() { debugPrint("tap logo") }])
      .wmToolbarVisibility(self.$visible)
      .onTapGesture {
        self.visible.toggle()
      }
  }
}
