//
//  ExampleContent.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/03/24.
//

import Foundation

enum ExampleContent: Int, CaseIterable, Identifiable {
    case test
}

extension ExampleContent {
    var id: Int { self.rawValue }
    
    var title: String {
        switch self {
        case .test:
            return "테스트"
        }
    }
}
