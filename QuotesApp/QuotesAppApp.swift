//
//  QuotesAppApp.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-05-27.
//

import SwiftUI

@main
struct QuotesAppApp: App {
    let persistanceController = PersistanceController()
    var body: some Scene {
        WindowGroup {
            landingView()
                .environment(\.managedObjectContext, persistanceController.container.viewContext)
        }
    }
}
