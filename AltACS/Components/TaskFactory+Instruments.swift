//
//  TaskFactory+Instruments.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData


// MARK: - This handles all the go around takeoff and landing
extension TaskFactory {
    static func generateInstrument(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        let p1 = Task(sequence: 6, name: "Normal Takeoff and Climb", reference: "FAA-H-8083-2", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with a normal takeoff, climb operations, and rejected takeoff procedures.")
        
        p1.owningSection = aSection
        context.insert(p1)
        
        retValue.append(p1)
        return retValue
    }
}


/**
 // --
 let task1 = TaskFactory.createTask(using: 0, name: "Preflight Assessment", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-23; POH/AFM; AC 00-6", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with preparing for safe flight.", in: context, and: aSection)
 
 TaskFactory.createComponent(type: .knowledge, id: "PA.II.A.K1", "Pilot self-assessment.", in: task1, using: context)
 TaskFactory.createComponent(type: .risk, id: "PA.II.A.R1", "The applicant demonstrates the ability to identify, assess and mitigate risks, encompassing: Pilot.", in: task1, using: context)
 TaskFactory.createComponent(type: .skill, id: "PA.II.A.S1", "Inspect the airplane with reference to an appropriate checklist.", in: task1, using: context)
 
 retValue.append(task1)
 */
