//
//  ExpandableViewModifier1View.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import SwiftUI

struct TargetedModifier1View: View {
    @ObservedObject var model: TargetedModifier1UIModel = .init()
    
    var body: some View {
        Group {
            Text("MyView")
                .preference(key: TargetedModifier1PreferenceKey.self, value: self.model)
                .foregroundColor(self.model.color)
                .font(self.model.font)
        }
    }
}

extension View {
    func makeToRed() -> some View {
        modifier(TargetedModifier1ColorModifier(color: .red))
    }
    
    func makeToLarge() -> some View {
        modifier(TargetedModifier1FontModifier(font: .largeTitle))
    }
}
