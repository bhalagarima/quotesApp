//
//  mainView.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-05-27.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        TabView{
            Tab("DailyQuote", systemImage: "quote.bubble.fill") {
                dailyQuote()
            }
            Tab("Lists", systemImage: "list.star") {
                listingView()
            }
            Tab("Favourites", systemImage: "heart.circle.fill") {
                favouriteQuotes()
            }
        }
    }
}

#Preview {
    mainView()
}
