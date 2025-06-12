//
//  QuotesListsModel.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-06-03.
//

struct QuotesListsModel: Codable {
    var quotes: [QuoteModel]
    var total: Int
    var skip: Int
    var limit: Int
}
