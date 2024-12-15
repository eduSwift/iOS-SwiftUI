//
//  JobAddView.swift
//  Jobs
//
//  Created by Eduardo Rodrigues on 15/12/24.
//

import SwiftUI
import SwiftData

struct JobAddView: View {
    @Environment(\.modelContext) private var context
    @State private var jobTitle: String = ""
    @State private var jobDetails: String = ""
    @State private var salary: Double = 0.0
    
    
    var body: some View {
        Form {
            TextField("Job Title", text: $jobTitle)
            TextField("Job Details", text: $jobDetails)
            Text("Salary")
            Slider(value: $salary, in: 0...100)
                Text(String(format: "%.2f €", salary))
            
            Button("Save") {
                saveJob()
                print("save it")
            }
            .font(.subheadline)
            .padding()
            .foregroundStyle(.white)
            .background(Color.green)
            .bold()
            .cornerRadius(8)
        }
    }
    
    private func saveJob() {
        let newJob = Job(jobTitle: jobTitle, jobDetails: jobDetails, salary: salary)
        context.insert(newJob)
    }
    
}

#Preview {
    JobAddView()
}
