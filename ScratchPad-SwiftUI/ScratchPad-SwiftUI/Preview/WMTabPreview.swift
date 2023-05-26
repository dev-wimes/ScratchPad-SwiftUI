//
//  WMTabPreview.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

struct WMTabPreview: View {
  @State private var selection: Int = 0
  @State private var isShow: Bool = true
  
  var body: some View {
    WMTabView(selection: self.$selection, isShow: self.$isShow) {
      ContentView()
        .wmTabItem(
          index: 0,
          icon: Image(systemName: "house"),
          title: "First"
        )

      NavigationView {
        WMNavigationPreview()
      }
      .wmTabItem(
        index: 1,
        icon: Image(systemName: "chevron.right"),
        title: "WMNavigation"
      )
      
      VStack {
        Spacer()
        Text("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        Spacer()
      }
      .background(Color.purple)
      .wmTabItem(
        index: 2,
        icon: Image(systemName: "house"),
        title: "First"
      )

      VStack {
        Button {
          self.isShow = false
        } label: {
          Text("hide tab view")
        }
        Text("second")
          .background(Color.green)
        Button {
          self.isShow = true
        } label: {
          Text("show tab view")
        }
      }
      .wmTabItem(
        index: 3,
        icon: Image(systemName: "magnifyingglass"),
        title: "Second"
      )

      ScrollView {
        LazyVStack {
          Button {
            self.isShow = false
          } label: {
            Text("hide tab view")
          }
          Button {
            self.isShow = true
          } label: {
            Text("show tab view")
          }
          Text("third")
            .frame(height: 200)
            .background(Color.blue)
          Text("third")
            .frame(height: 200)
            .background(Color.blue)
          Button {
            self.isShow = false
          } label: {
            Text("hide tab view")
          }
          Button {
            self.isShow = true
          } label: {
            Text("show tab view")
          }
          Text("third")
            .frame(height: 200)
            .background(Color.blue)
          Button {
            self.isShow = false
          } label: {
            Text("hide tab view")
          }
          Button {
            self.isShow = true
          } label: {
            Text("show tab view")
          }
        }
      }
      .wmTabItem(
        index: 4,
        icon: Image(systemName: "person"),
        title: "Third"
      )

      NavigationView {
        NavigationLink("navigate to") {
          InsideTabView()
        }
      }
      .wmTabItem(
        index: 5,
        icon: Image(systemName: "person"),
        title: "Third"
      )
    }

    // MARK: for test

//    .wmTabViewEnableColor(.green)
//    .wmTabViewDisableColor(.black)
//    .wmTabItemStyle(WMTabItemTestStyle())
//    .wmTabViewStyle(WMTabViewTestStyle())
  }
}

struct InsideTabView: View {
  @Environment(\.wmTabVisibility) var tabVisiblity

  var body: some View {
    Button {
      print("tapped!")
      self.tabVisiblity.wrappedValue = !tabVisiblity.wrappedValue
    } label: {
      Text("tab toggle")
    }
  }
}

struct WMTabItemTestStyle: WMTabItemStyle {
  func tabItem(
    icon: Image?,
    title: Text?,
    enabledColor: Color,
    disabledColor: Color,
    isSelected: Bool
  ) -> AnyView {
    AnyView(
      VStack(spacing: 5) {
        title?
          .font(.system(size: 10, weight: .medium))
        icon?
          .renderingMode(.template)
      }
      .foregroundColor(isSelected ? enabledColor : disabledColor)
    )
  }
}

struct WMTabViewTestStyle: WMTabViewStyle {
  func tabView(
    with geometry: GeometryProxy,
    itemContainer: @escaping () -> AnyView
  ) -> AnyView {
    AnyView(
      VStack(spacing: 0) {
        Divider()

        VStack {
          itemContainer()
            .frame(height: 50)
            .padding(.bottom, geometry.safeAreaInsets.bottom)
        }
        .background(.blue.opacity(0.5))
        .frame(height: 50 + geometry.safeAreaInsets.bottom)
      }
    )
  }
}
