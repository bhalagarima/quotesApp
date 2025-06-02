//
//  Untitled.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-06-02.
//
import Foundation
import SwiftUI

public struct SpacingTheme {
    public static let two: CGFloat = 2
    public static let four: CGFloat = 4
    public static let six: CGFloat = 6
    public static let eight: CGFloat = 8
    public static let ten: CGFloat = 10
    public static let twelve: CGFloat = 12
    public static let sixteen: CGFloat = 16
    public static let twentyfour: CGFloat = 24
    public static let thirtytwo: CGFloat = 32
}

extension View {
    // MARK: - vertical spacers
    @ViewBuilder public func twoSpacer() -> some View {
        Spacer().frame(height: SpacingTheme.two)
    }
    @ViewBuilder public func fourSpacer() -> some View {
        Spacer().frame(height: SpacingTheme.four)
    }
    @ViewBuilder public func sixSpacer() -> some View {
        Spacer().frame(height: SpacingTheme.six)
    }
    @ViewBuilder public func eightSpacer() -> some View {
        Spacer().frame(height: SpacingTheme.eight)
    }
    @ViewBuilder public func tenSpacer() -> some View {
        Spacer().frame(height: SpacingTheme.ten)
    }
    @ViewBuilder public func twelveSpacer() -> some View {
        Spacer().frame(height: SpacingTheme.twelve)
    }
    @ViewBuilder public func sixteenSpacer() -> some View {
        Spacer().frame(height: SpacingTheme.sixteen)
    }
    @ViewBuilder public func twentyfourSpacer() -> some View {
        Spacer().frame(height: SpacingTheme.twentyfour)
    }
    @ViewBuilder public func thirtytwoSpacer() -> some View {
        Spacer().frame(height: SpacingTheme.thirtytwo)
    }
    
    // MARK: - horizontal spacers
    @ViewBuilder public func twoHorizontalSpacer() -> some View {
        Spacer().frame(width: SpacingTheme.two)
    }
    @ViewBuilder public func fourHorizontalSpacer() -> some View {
        Spacer().frame(width: SpacingTheme.four)
    }
    @ViewBuilder public func sixHorizontalSpacer() -> some View {
        Spacer().frame(width: SpacingTheme.six)
    }
    @ViewBuilder public func eightHorizontalSpacer() -> some View {
        Spacer().frame(width: SpacingTheme.eight)
    }
    @ViewBuilder public func tenHorizontalSpacer() -> some View {
        Spacer().frame(width: SpacingTheme.ten)
    }
    @ViewBuilder public func twelveHorizontalSpacer() -> some View {
        Spacer().frame(width: SpacingTheme.twelve)
    }
    @ViewBuilder public func sixteenHorizontalSpacer() -> some View {
        Spacer().frame(width: SpacingTheme.sixteen)
    }
    @ViewBuilder public func twentyfourHorizontalSpacer() -> some View {
        Spacer().frame(width: SpacingTheme.twentyfour)
    }
    @ViewBuilder public func thirtytwoHorizontalSpacer() -> some View {
        Spacer().frame(width: SpacingTheme.thirtytwo)
    }
}
