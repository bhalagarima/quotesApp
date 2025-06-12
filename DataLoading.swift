//
//  DataLoading.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-06-05.
//

import Foundation
import CoreData
import SwiftUI

class DataLoading: ObservableObject {
    static let shared = DataLoading()
    @Published var favouriteQuotes: [Quote] = []
    fileprivate var managedObjectContext: NSManagedObjectContext
    
    init() {
        let persistance = PersistanceController()
        self.managedObjectContext = persistance.container.viewContext
    }
    
    func makeChanges(quote:QuoteModel) {
        if favouriteQuotes.count > 0 {
            favouriteQuotes.forEach({ item in
                if item.id == quote.id {
                    // item already added to favorite
                    //removeQuote(at: offset)
                    print("Item is already in favourite list")
                    removeDailyQuote(quote: item)
                    return
                }
            })
            print("Item is not in favourite list")
            addFavourite(quote: quote)
        } else {
            addFavourite(quote: quote)
        }
    }
    
    func removeQuote(at offsets: IndexSet) {
        for index in offsets {
            let quote = favouriteQuotes[index]
            managedObjectContext.delete(quote)
        }
        do {
            try managedObjectContext.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func addFavourite(quote:QuoteModel) {
        let newQuote = Quote(context: managedObjectContext)
        newQuote.id = Int16(quote.id)
        newQuote.quote = quote.quote
        newQuote.author = quote.author
        newQuote.isFavourite = true
        do {
            try managedObjectContext.save()
            print("Added to fav list")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func removeDailyQuote(quote:Quote) {
        managedObjectContext.delete(quote)
        do {
            try managedObjectContext.save()
        } catch {
            // Handle the Core Data error appropriately in production
            print("Failed to delete item: \(error.localizedDescription)")
        }
    }
}
