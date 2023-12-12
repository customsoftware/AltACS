//
//  TaskFactory+Airport.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData


// MARK: - This handles all the go airport base operations
extension TaskFactory {
    static func generateAirportBaseOps(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        let task1 = TaskFactory.createTask(using: 0, name: "Communications, Light Signals, and Runway Lighting Systems", reference: "14 CFR part 91; FAA-H-8083-2, FAA-H-8083-25; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with normal and emergency radio communications, ATC light signals, and runway lighting systems to conduct safe airport operations.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.A.K1", "How to obtain proper radio frequencies.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.A.K2", "Proper radio communication procedures and ATC phraseology.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.A.K3", "ATC light signal recognition.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.A.K4", "Appropriate use of transponders.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.A.K5", "Lost communication procedures.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.A.K6", "Equipment issues that could cause loss of communication.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.A.K7", "Radar assistance.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.A.K8", "National Transportation Safety Board (NTSB) accident/incident reporting.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.A.K9", "Runway Status Lighting Systems.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.III.A.R1", "Poor communication.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.III.A.R2", "Failure to recognize and declare an emergency.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.III.A.R3", "Confirmation or expectation bias.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.III.A.S1", "Select appropriate frequencies.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.III.A.S2", "Transmit using phraseology and procedures as specified in the AIM.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.III.A.S3", "Acknowledge radio communications and comply with instructions.", in: task1, using: context)
        
        retValue.append(task1)
        
        // -- Traffic Patterns
        let task2 = TaskFactory.createTask(using: 1, name: "Traffic Patterns", reference: "14 CFR part 91; FAA-H-8083-2, FAA-H-8083-25; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with traffic patterns.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.B.K1", "Towered and nontowered airport operations.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.B.K2", "Runway selection for the current conditions.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.B.K3", "Right-of-way rules.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.III.B.K4", "Use of automated weather and airport information.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.III.B.R1", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.III.B.R2", "Distractions, loss of situational awareness, or improper task management.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.III.B.R3", "Wake turbulence or windshear.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.III.B.S1", "Identify and interpret airport/seaplane base runways, taxiways, markings, signs, and lighting", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.III.B.S2", "Comply with recommended traffic pattern procedures.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.III.B.S3", "Correct for wind drift to maintain the proper ground track.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.III.B.S4", "Maintain orientation with the runway/landing area in use.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.III.B.S5", "Maintain traffic pattern altitude, ±100 feet, and the appropriate airspeed, ±10 knots.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.III.B.S6", "Maintain situational awareness and proper spacing from other aircraft in the traffic pattern.", in: task2, using: context)
        
        retValue.append(task2)
        
        return retValue
    }
}
