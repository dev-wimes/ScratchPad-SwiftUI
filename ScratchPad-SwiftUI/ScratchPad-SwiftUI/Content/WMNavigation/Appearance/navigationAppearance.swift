//
//  navigationAppearance.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

public func setNavigationAppearance() {
  let navigationAppearance = UINavigationBarAppearance()

  navigationAppearance.configureWithTransparentBackground()
  navigationAppearance.backgroundColor = .white

  UINavigationBar.appearance().standardAppearance = navigationAppearance
  UINavigationBar.appearance().compactAppearance = navigationAppearance
  UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance
  UINavigationBar.appearance().tintColor = .black
}
