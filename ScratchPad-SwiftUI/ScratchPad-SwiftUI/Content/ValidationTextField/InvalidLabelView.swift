//
//  InvalidLabelView.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

public struct InvalidLabelView: View {
  private var font: Font?
  private var horizontalSpace: CGFloat = 0
  private var lineLimit: Int = 1

  private let text: String
  private let invalidColor: Color

  public init(text: String, invalidColor: Color) {
    self.text = text
    self.invalidColor = invalidColor
  }

  public var body: some View {
    Text(self.text)
      .lineLimit(self.lineLimit)
      .font(self.font)
      .foregroundColor(self.invalidColor)
      .padding([.leading, .trailing], self.horizontalSpace)
  }
}

public extension InvalidLabelView {
  /// InvalidLabelView와 SuperView간의 horizontal space를 정의합니다.
  func spacingWithHorizontal(_ spacing: CGFloat) -> Self {
    var view = self
    view.horizontalSpace = spacing
    return view
  }

  /// invalid일 경우 출력되는 text의 font입니다.
  func invalidFont(_ font: Font?) -> Self {
    var view = self
    view.font = font
    return view
  }

  /// lineLimit을 변경합니다.
  func lineLimit(_ limit: Int) -> Self {
    var view = self
    view.lineLimit = limit
    return view
  }
}
