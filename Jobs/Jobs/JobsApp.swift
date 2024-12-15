//
//  JobsApp.swift
//  Jobs
//
//  Created by Eduardo Rodrigues on 15/12/24.
//

import SwiftUI
import SwiftData

@main
struct JobsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            JobAddView()
            JobsView()
                .modelContainer(for: [Job.self])
        }
    }
}
