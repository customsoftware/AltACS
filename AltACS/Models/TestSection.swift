//
//  TestSection.swift
//  ACS
//
//  Created by Kenneth Cluff on 12/8/23.
//

import Foundation
import SwiftData


@Model
class TestSection {
    var section: String = ""
    var sequence: Int = 0
    @Relationship var tasks = [Task]()
    
    init(section: String, sequence: Int, tasks: [Task] = [Task]()) {
        self.section = section
        self.sequence = sequence
        self.tasks = tasks
    }
}

/**
 TestSection: tasks
 */
