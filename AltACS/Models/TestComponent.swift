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
    private(set) var type: Int = 0
    var isComplete: Bool = false
    var id: String = ""
    var componentDescription: String = ""
    var answer: String = ""
    var reference: String = ""
    
    @Relationship var owningTask: Task?
    
    init(identifier: String, componentDescription: String, answer: String, reference: String) {
        self.id = identifier
        self.componentDescription = componentDescription
        self.answer = answer
        self.reference = reference
    }
    
    func setType(_ type: ComponentType) {
        switch type {
        case .notSet:
            self.type = 0
        case .knowledge:
            self.type = 1
        case .skill:
            self.type = 2
        case .risk:
            self.type = 3
        }
    }
    
    func typeEquivalent() -> ComponentType {
        var retValue = ComponentType.notSet
        switch type {
        case 0:
            retValue = .notSet
        case 1:
            retValue = .knowledge
        case 2:
            retValue = .risk
        case 3:
            retValue = .skill
        default:
            retValue = .notSet
        }
        
        guard retValue == .notSet else { return retValue }
        if id.contains("K") {
            type = 1
            retValue = .knowledge
        } else if id.contains("R") {
            type = 2
            retValue = .risk
        } else if id.contains("S") {
            type = 3
            retValue = .skill
        }
        
        return retValue
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
