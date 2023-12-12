//
//  TaskFactory+PostFlight.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData



// MARK: - This handles all the go around takeoff and landing
extension TaskFactory {
    static func generatePostFlight(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        let task1 = TaskFactory.createTask(using: 0, name: "After Landing, Parking and Securing", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM", objective: "TTo determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with after landing, parking, and securing procedures.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.XII.A.K1", "Airplane shutdown, securing, and postflight inspection.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.XII.A.K2", "Documenting in-flight/postflight discrepancies.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.XII.A.R1", "Inappropriate activities and distractions.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.XII.A.R2", "Confirmation or expectation bias as related to taxi instructions.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.XII.A.R3", "Airport specific security procedures.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.XII.A.R4", "Disembarking passengers.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.XII.A.S1", "Utilize runway incursion avoidance procedures.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.XII.A.S2", "Park in an appropriate area, considering the safety of nearby persons and property.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.XII.A.S3", "Complete the appropriate checklist.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.XII.A.S4", "Conduct a postflight inspection and document discrepancies and servicing requirements, if any.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.XII.A.S5", "Secure the airplane.", in: task1, using: context)
        
        retValue.append(task1)
        return retValue
    }
}
