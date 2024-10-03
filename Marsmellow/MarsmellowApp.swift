//
//  MarsmellowApp.swift
//  Marsmellow
//
//  Created by Shirin Sitara AJ on 03/10/2024.
//

import SwiftUI
import SwiftData

@main
struct MarsmellowApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
            HomeScreen(viewModel: HomeScreen.ViewModel())
        }
//        .modelContainer(sharedModelContainer)
    }
}
