//
//  PersistanceController.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-06-05.
//

import Foundation
import CoreData

class PersistanceController: ObservableObject {
    let container = NSPersistentContainer(name: "QuotesModel")
    static let shared = PersistanceController()
    
    init() {
        container.loadPersistentStores(completionHandler: { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        })
    }
}
