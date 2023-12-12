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
    var state: ComponentState = ComponentState.notTested
    var type: ComponentType = ComponentType.notSet
    var id: String = ""
    var componentDescription: String = ""
    var answer: String = ""
    var reference: String = ""
    
    @Relationship var owningTask: Task?
    
    init(state: ComponentState, type: ComponentType, identifier: String, componentDescription: String, answer: String, reference: String) {
        self.state = state
        self.type = type
        self.id = identifier
        self.componentDescription = componentDescription
        self.answer = answer
        self.reference = reference
    }
}


enum ComponentState: Codable {
    case notTested
    case passed
    case failed
}


enum ComponentType: Codable {
    case notSet
    case knowledge
    case skill
    case risk
}
