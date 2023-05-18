//
//  SizeReadable.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

public protocol SizeReadable where Self: View {
  associatedtype Content = View

  var size: CGSize { get }
  var ratio: CGFloat { get }
  var content: Content { get }
}
