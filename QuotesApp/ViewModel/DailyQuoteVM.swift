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
    @Published var quoteData: QuoteModel?
    
    func fetchData() async {
        guard let downloadedQuote: QuoteModel = await WebService().downloadData(fromURL: "https://dummyjson.com/quotes/random") else {return}
        quoteData = downloadedQuote
    }
}
