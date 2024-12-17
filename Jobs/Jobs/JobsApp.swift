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
            JobDetailView(job: Job(jobTitle: "", jobDetails: "", salary: 0.0, isFavorite: false, skills: []))
                .modelContainer(for: [Job.self])
        }
    }
}
