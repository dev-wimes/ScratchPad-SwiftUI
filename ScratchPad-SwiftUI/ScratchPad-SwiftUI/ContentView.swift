//
//  ContentView.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import SwiftUI

struct ContentView: View {
  @State var showSheet: Bool = false
  
  var body: some View {
    List(ExampleContent.allCases) { content in
      Button {
        self.showSheet = true
      } label: {
        Text(content.title)
      }
      .sheet(isPresented: self.$showSheet) {
        ModalPreview(content)
      }
    }
  }
}

extension ContentView {
  @ViewBuilder
  func ModalPreview(_ content: ExampleContent) -> some View {
    switch content {
    case .targetedViewModifier1:
      TargetedModifier1PreView()
    case .validationTextField:
      ValidationTextFieldPreview()
        .padding([.top], 50)
        .padding([.leading, .trailing], 20)
    }
  }
}
