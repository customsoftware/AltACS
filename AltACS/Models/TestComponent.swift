//
//  TestComponent.swift
//  ACS
//
//  Created by Kenneth Cluff on 12/8/23.
//

import Foundation
import SwiftData


@Model
class TestComponent {
    var type: ComponentType = ComponentType.notSet
    var isComplete: Bool = false
    var id: String = ""
    var componentDescription: String = ""
    var answer: String = ""
    var reference: String = ""
    
    @Relationship var owningTask: Task?
    
    init(type: ComponentType, identifier: String, componentDescription: String, answer: String, reference: String) {
        self.type = type
        self.id = identifier
        self.componentDescription = componentDescription
        self.answer = answer
        self.reference = reference
    }
}


enum ComponentState: Int, Codable {
    case notTested = 0
    case passed = 1
    case failed = 2
}


enum ComponentType: Codable {
    case notSet
    case knowledge
    case skill
    case risk
}
