//
//  Task.swift
//  ACS
//
//  Created by Kenneth Cluff on 12/8/23.
//

import Foundation
import SwiftData

@Model
class Task {
    var sequence: Int = 0
    var name: String = ""
    var reference: String = ""
    var objective: String = ""
    @Relationship var owningSection: TestSection?
    @Relationship(deleteRule: .cascade, inverse: \TestComponent.owningTask) var knowledge : [TestComponent]?
    @Relationship(deleteRule: .cascade, inverse: \TestComponent.owningTask) var risk : [TestComponent]?
    @Relationship(deleteRule: .cascade, inverse: \TestComponent.owningTask) var skills : [TestComponent]?
    
    
    init(sequence: Int, name: String = "", reference: String, objective: String = "") {
        self.sequence = sequence
        self.name = name
        self.reference = reference
        self.objective = objective
        self.owningSection = owningSection
    }
}

/**
 Task: knowledge
 Task: risk
 Task: skills
 */
