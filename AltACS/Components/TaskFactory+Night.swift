//
//  TaskFactory+Night.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData



// MARK: - This handles all the go around takeoff and landing
extension TaskFactory {
    static func generateNight(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        let task1 = TaskFactory.createTask(using: 0, name: "Night Preparation", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-25; AIM; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with night operations.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.XI.A.K1", "Physiological aspects of vision related to night flying.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.XI.A.K2", "Lighting systems identifying airports, runways, taxiways and obstructions, as well as pilot controlled lighting.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.XI.A.K3", "Airplane equipment and lighting requirements for night operations.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.XI.A.K4", "Personal equipment essential for night flight.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.XI.A.K5", "Night orientation, navigation, and chart reading techniques.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.XI.A.R1", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.XI.A.R2", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.XI.A.R3", "Hazards specific to night flying.", in: task1, using: context)
        
        
        retValue.append(task1)
        return retValue
    }
}
