//
//  ExpandableViewModifier1View.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import SwiftUI

struct ExpandableViewModifier1View: View {
    @ObservedObject var model: ExpandableViewModifier1UIModel = .init()
    
    var body: some View {
        Group {
            Text("MyView")
                .preference(key: ExpandableViewModifier1PreferenceKey.self, value: self.model)
                .foregroundColor(self.model.color)
                .font(self.model.font)
        }
    }
}

extension View {
    func makeToRed() -> some View {
        modifier(ExpandableViewModifier1ColorModifier(color: .red))
    }
    
    func makeToLarge() -> some View {
        modifier(ExpandableViewModifier1FontModifier(font: .largeTitle))
    }
}
