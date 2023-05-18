//
//  SizePreferenceKey.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

public struct SizePreferenceKey: PreferenceKey {
  public static var defaultValue: CGSize = .zero
  public static func reduce(value _: inout CGSize, nextValue _: () -> CGSize) {}
}
