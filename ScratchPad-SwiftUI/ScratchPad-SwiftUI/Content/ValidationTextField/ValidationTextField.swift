//
//  ValidationTextField.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

public struct ValidationTextField<Content: View>: View {
  public enum DividerEdge {
    case top
    case bottom
  }

  @FocusState private var isFocus: Bool

  @Binding private var isValid: Bool
  @Binding private var text: String

  private var dividerTopSpace: CGFloat = 0
  private var dividerBottomSpace: CGFloat = 0
  private var font: Font = .system(size: 18, weight: .regular)
  private var textColor: Color = .black
  private var invalidColor: Color = .red

  private let placeHolderText: String
  private let label: ((String) -> InvalidLabelView) -> Content

  public init(
    isValid: Binding<Bool>,
    text: Binding<String>,
    placeHolder: String,
    @ViewBuilder label: @escaping ((String) -> InvalidLabelView) -> Content
  ) {
    self._isValid = isValid
    self._text = text

    self.placeHolderText = placeHolder
    self.label = label
  }

  public var body: some View {
    VStack(spacing: 0) {
      TextField("", text: self.$text)
        .autocorrectionDisabled(true)
        .placeHolder(when: self.text.isEmpty) {
          self.PlaceHoldText(self.placeHolderText)
        }
        .lineLimit(1)
        .font(self.font)
        .foregroundColor(self.textColor)
        .focused(self.$isFocus)

      self.DividerView(
        isFocus: self.isFocus,
        isValid: self.isValid,
        invalidColor: self.invalidColor
      )
      .padding(.bottom, self.dividerBottomSpace)
      .padding(.top, self.dividerTopSpace)

      if !self.isValid {
        self.label { text in
          InvalidLabelView(text: text, invalidColor: self.invalidColor)
        }
      }
    }
  }
}

private extension ValidationTextField {
  @ViewBuilder
  func PlaceHoldText(_ text: String) -> some View {
    Text(text)
      .lineLimit(1)
      .foregroundColor(.gray)
      .font(.system(size: 18, weight: .regular))
  }

  @ViewBuilder
  func DividerView(
    isFocus: Bool,
    isValid: Bool,
    invalidColor: Color
  ) -> some View {
    if isFocus {
      Divider()
        .frame(height: 1)
        .background(isValid ? .black : invalidColor)
    } else {
      Divider()
        .frame(height: 1)
    }
  }
}

public extension ValidationTextField {
  func dividerSpacing(_ edges: [DividerEdge], _ lenght: CGFloat) -> Self {
    var view = self
    if edges.contains(.top) {
      view.dividerTopSpace = lenght
    }

    if edges.contains(.bottom) {
      view.dividerBottomSpace = lenght
    }

    return view
  }

  func font(_ font: Font) -> Self {
    var view = self
    view.font = font
    return view
  }

  func textColor(_ color: Color) -> Self {
    var view = self
    view.textColor = color
    return view
  }

  func invalidColor(_ color: Color) -> Self {
    var view = self
    view.invalidColor = color
    return view
  }
}

