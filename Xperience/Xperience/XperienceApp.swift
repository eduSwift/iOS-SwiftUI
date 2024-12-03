//
//  XperienceApp.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 02.12.24.
//

import SwiftUI
import SwiftData

@main
struct XperienceApp: App {
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
            MovieList()
        }
        .modelContainer(sharedModelContainer)
    }
}
