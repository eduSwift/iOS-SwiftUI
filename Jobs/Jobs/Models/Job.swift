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
    var isFavorite: Bool
    @Relationship var skills: [Skills]
    
    init(jobTitle: String, jobDetails: String, salary: Double, isFavorite: Bool, skills: [Skills]) {
        self.jobTitle = jobTitle
        self.jobDetails = jobDetails
        self.salary = salary
        self.isFavorite = isFavorite
        self.skills = skills
    }
}

@Model
class Skills {
    var id = UUID()
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
