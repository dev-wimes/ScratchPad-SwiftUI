//
//  SizeVReader.swift
//  ScratchPad-SwiftUI
//
//  Created by Wimes on 2023/05/18.
//

import SwiftUI

public struct SizeVReader<Content: View>: View, SizeReadable {
  @Binding public private(set) var size: CGSize
  public private(set) var ratio: CGFloat
  public private(set) var content: Content

  public init(
    size: Binding<CGSize>,
    aspectRatio ratio: CGFloat,
    @ViewBuilder content: () -> Content
  ) {
    _size = size
    self.ratio = ratio
    self.content = content()
  }

  public var body: some View {
    GeometryReader { proxy in
      self.content
        .preference(
          key: SizePreferenceKey.self,
          value: CGSize(width: proxy.size.width, height: proxy.size.width * self.ratio)
        )
    }
    .onPreferenceChange(SizePreferenceKey.self) { preferences in
      self.size = preferences
    }
  }
}

