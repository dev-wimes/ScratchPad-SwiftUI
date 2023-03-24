//
//  ExampleContent.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import Foundation

enum ExampleContent: Int, CaseIterable, Identifiable {
    case expandableViewModifier1
}

extension ExampleContent {
    var id: Int { self.rawValue }
    
    var title: String {
        switch self {
        case .expandableViewModifier1:
            return "확장가능한 ViewModifier1"
        }
    }
}
