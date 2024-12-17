//
//  JobsView.swift
//  Jobs
//
//  Created by Eduardo Rodrigues on 15/12/24.
//

import SwiftUI
import SwiftData

struct JobsView: View {
    @Query private var jobs: [Job]
    @State private var showSheet = false
    @State private var selectedJob: Job?
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(jobs) { job in
                    VStack(alignment: .leading) {
                        Text(job.jobTitle)
                            .font(.headline)
                        Text(job.jobDetails)
                            .font(.subheadline)
                        Text(String(format: "%.2f€", job.salary))
                            .font(.caption)
                    }
                    .padding(.vertical, 4)
                    .onTapGesture {
                        selectedJob = job
                        showSheet = true
                    }
                }
                
            }
            .navigationTitle("Jobs")
            .toolbar {
                NavigationLink("Add") {
                    JobAddView()
                }
            }
            .sheet(isPresented: $showSheet) {
                if let selectedJob = selectedJob {
                    JobDetailView(job: selectedJob)
                }
            }
        }
    }
}

#Preview {
    JobsView()
}
