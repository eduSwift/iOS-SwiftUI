//
//  Job.swift
//  Jobs
//
//  Created by Eduardo Rodrigues on 15/12/24.
//

import Foundation
import SwiftData

@Model
class Job {
    var id = UUID()
    var jobTitle: String
    var jobDetails: String
    var salary: Double
    
    init(jobTitle: String, jobDetails: String, salary: Double) {
        self.jobTitle = jobTitle
        self.jobDetails = jobDetails
        self.salary = salary
    }
}
