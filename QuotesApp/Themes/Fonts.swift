//
//  Untitled.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-06-02.
//

import Foundation
import SwiftUI

extension View {
    public func quoteStyle() -> some View {
        return self.font(.subheadline)
            .fontDesign(.serif)
            .foregroundStyle(.white)
    }
    
    public func authorStyle() -> some View {
        return self.font(.footnote)
            .fontDesign(.serif)
            .foregroundStyle(.white)
    }
    
    public func quoteBackgroundStyle() -> some View {
        return self.background(
            RoundedRectangle(cornerRadius: 10.0, style: .continuous)
                .stroke(Color.white, lineWidth: 2.0)
        )
    }
    
    public func quoteBackgroundStyleRow() -> some View {
        return self.listRowBackground(
            RoundedRectangle(cornerRadius: 10.0, style: .continuous)
                .stroke(Color.white, lineWidth: 2.0)
        )
    }
    
    public func landingTitle() -> some View {
        return self.font(.largeTitle)
            .fontDesign(.serif)
            .foregroundStyle(.white)
    }
    
    public func landingSubTitle() -> some View {
        return self.font(.headline)
            .fontDesign(.serif)
            .foregroundStyle(.white)
    }
}
