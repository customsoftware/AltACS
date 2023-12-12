//
//  TaskFactory.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData


class TaskFactory {
    static func generateTasks(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        switch aSection.sequence {
        case 0:
            retValue = generatePreFlightPreparationTasks(for: aSection, in: context)
        case 1:
            retValue = generatePreFlightProcedureTasks(for: aSection, in: context)
        case 2:
            retValue = generateAirportBaseOps(for: aSection, in: context)
        case 3:
            retValue = generateTOGoAroundLandingTasks(for: aSection, in: context)
        case 4:
            retValue = generatePerformance(for: aSection, in: context)
        case 5:
            retValue = generateNavigation(for: aSection, in: context)
        case 6:
            retValue = generateSlowFlight(for: aSection, in: context)
        case 7:
            retValue = generateInstrument(for: aSection, in: context)
        case 8:
            retValue = generateEmergency(for: aSection, in: context)
        case 9:
            retValue = generateNight(for: aSection, in: context)
        case 10:
            retValue = generatePostFlight(for: aSection, in: context)
        default:
            fatalError("You've encountered an unexpected section value")
        }
        
        return retValue
    }
    
    static func createTask(using sequence: Int, name: String, reference: String, objective: String, in context: ModelContext, and section: TestSection) -> Task {
        let task = Task(sequence: sequence, name: name, reference: reference, objective: objective)
        task.owningSection = section
        context.insert(task)
        return task
    }
    
    static func createComponent(type: ComponentType, id: String, _ text: String, in aTask: Task, using context: ModelContext){
        let newComponent = TestComponent(state: .notTested, type: type, identifier: id, componentDescription: text, answer: "Write answer here", reference: "Write references here")
        newComponent.owningTask = aTask
        
        switch type {
        case .notSet:
            fatalError("Can't have this")
        case .knowledge:
            aTask.knowledge.append(newComponent)
        case .skill:
            aTask.skills.append(newComponent)
        case .risk:
            aTask.risk.append(newComponent)
        }
        
        context.insert(newComponent)
    }
    
}
