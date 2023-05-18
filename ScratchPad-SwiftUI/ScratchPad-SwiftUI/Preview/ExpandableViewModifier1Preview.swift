//
//  ExpandableViewModifier1Preview.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import SwiftUI

struct TargetedModifier1PreView: View {
  @State var popup: Bool = false
  
  var body: some View {
    Group {
      Button {
        self.popup = true
      } label: {
        Text("Tap me")
          .font(.body)
          .foregroundColor(.blue)
      }
    }
    .sheet(isPresented: self.$popup) {
      Group {
        TargetedModifier1View()
        Text("otherView")
      }
      .makeToRed()
      .makeToLarge()
    }
  }
}
