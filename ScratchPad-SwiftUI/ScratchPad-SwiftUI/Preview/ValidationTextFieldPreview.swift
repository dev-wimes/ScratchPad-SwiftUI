//
//  ValidationTextFieldPreview.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/26.
//

import SwiftUI

struct ValidationTextFieldPreview: View {
  @State var text: String = ""

  var body: some View {
    ScrollView {
      ValidationTextField(
        isValid: .init(get: { self.text.isEmpty }, set: { _ in }),
        text: self.$text,
        placeHolder: "holder"
      ) { label in
        label("invalid invalid invalid invalid invalid invalid")
          .invalidFont(.title)
          .spacingWithHorizontal(16)
          .lineLimit(2)
      }
      .invalidColor(.pink)
      .dividerSpacing([.bottom], 20)
      .dividerSpacing([.top], 10)
    }
  }
}
