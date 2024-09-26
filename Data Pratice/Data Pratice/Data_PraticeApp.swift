//
//  Data_PraticeApp.swift
//  Data Pratice
//
//  Created by Eduardo Rodrigues on 26.09.24.
//

import SwiftUI
import SwiftData

@main
struct Data_PraticeApp: App {
    let persistenceController = PersistenceController.shared
    let schema = Schema([
        Item.self,
        Todo.self ,
    ])

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
