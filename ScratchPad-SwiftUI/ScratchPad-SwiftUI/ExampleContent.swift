//
//  ExampleContent.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import Foundation

enum ExampleContent: Int, CaseIterable, Identifiable {
    case targetedViewModifier1
}

extension ExampleContent {
    var id: Int { self.rawValue }
    
    var title: String {
        switch self {
        case .targetedViewModifier1:
            return "특정된 ViewModifier1"
        }
    }
}
