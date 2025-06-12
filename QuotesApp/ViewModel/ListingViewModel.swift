//
//  ListingViewModel.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-06-03.
//

import Foundation
import SwiftUI

@MainActor
class ListingViewModel: ObservableObject {
    @Published var quotes: [QuoteModel] = []
    
    func fetchData() async {
        guard let downloadedQuote: QuotesListsModel = await WebService().downloadData(fromURL: "https://dummyjson.com/quotes") else {return}
        quotes = downloadedQuote.quotes
    }
}
