//
//  DailyQuoteVM.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-06-02.
//

import Foundation
import SwiftUI

@MainActor
class DailyQuoteVM: ObservableObject {
    var loadData:DataLoading
    @Published var quoteData: QuoteModel?
    @Published var favouriteQuotes: [Quote] = []
    
    init() {
        loadData = DataLoading()
    }
    
    func fetchData() async {
        guard let downloadedQuote: QuoteModel = await WebService().downloadData(fromURL: "https://dummyjson.com/quotes/random") else {return}
        quoteData = downloadedQuote
    }
    
    func saveFavourite(quote: QuoteModel) {
        loadData.favouriteQuotes = favouriteQuotes
        loadData.makeChanges(quote: quote)
    }
}
