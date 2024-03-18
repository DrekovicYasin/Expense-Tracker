//
//  Expense_TrackerApp.swift
//  Expense Tracker
//
//  Created by Yasin Gülsuyu on 16.03.2024.
//

import SwiftUI

@main
struct Expense_TrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .modelContainer(for: [Transaction.self])
    }
}
