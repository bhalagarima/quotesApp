//
//  NetworkError.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-06-02.
//

import Foundation
import SwiftUI

enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}
