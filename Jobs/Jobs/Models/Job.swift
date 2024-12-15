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
    var title: String
    var details: String
    var salary: Double
    
    init(title: String, details: String, salary: Double) {
        self.title = title
        self.details = details
        self.salary = salary
    }
}
