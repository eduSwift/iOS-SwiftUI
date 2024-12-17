//
//  JobDetailView.swift
//  Jobs
//
//  Created by Eduardo Rodrigues on 15/12/24.
//

import SwiftUI
import SwiftData

struct JobDetailView: View {
    @Bindable var job: Job
    
    var body: some View {
        VStack {
            Text(job.jobTitle)
                .font(.largeTitle)
            Text("Description: \(job.jobDetails)")
            Text("Salary: \(job.salary)  €")
            Toggle("Favorite", isOn: $job.isFavorite)
        }
        .padding()
        
    }
}

#Preview {
    JobDetailView(job: Job(jobTitle: "iOS Developer", jobDetails: "Creative", salary: 54000, isFavorite: false, skills: []))
}
