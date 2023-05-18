//
//  WMTabViewStyle.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

public protocol WMTabViewStyle {
  func tabView(with geometry: GeometryProxy, itemContainer: @escaping () -> AnyView) -> AnyView
}
