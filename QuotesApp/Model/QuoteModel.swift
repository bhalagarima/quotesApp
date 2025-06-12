//
//  QuoteModel.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-06-02.
//

import Foundation
import SwiftUI

struct QuoteModel: Identifiable, Codable {
    var id: Int
    var quote: String
    var author: String
}

