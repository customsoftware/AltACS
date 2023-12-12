//
//  TaskFactory+PreFlightProcedures.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData


// MARK: - This handles all the preflight procedure objects
extension TaskFactory {
    static func generatePreFlightProcedureTasks(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        
        // -- Preflight Assessment
        let task1 = TaskFactory.createTask(using: 0, name: "Preflight Assessment", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-23; POH/AFM; AC 00-6", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with preparing for safe flight.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.A.K1", "Pilot self-assessment.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.A.K2", "Determining that the airplane to be used is appropriate and airworthy.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.A.K3", "Airplane preflight inspection including:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.A.K3a", "a. Which items must be inspected", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.A.K3b", "b. The reasons for checking each item", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.A.K3c", "c. How to detect possible defects", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.A.K3d", "d. The associated regulations", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.A.K4", "Pilot self-assessment.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.II.A.R1", "The applicant demonstrates the ability to identify, assess and mitigate risks, encompassing: Pilot.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.A.R2", "Aircraft.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.A.R3", "Environment (e.g., weather, airports, airspace, terrain, obstacles).", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.A.R4", "External pressures.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.A.R5", "Aviation security concerns.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.II.A.S1", "Inspect the airplane with reference to an appropriate checklist.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.A.S2", "Verify the airplane is in condition for safe flight and conforms to its type design.", in: task1, using: context)
        
        retValue.append(task1)
        
        // -- Flight Deck Management
        let task2 = TaskFactory.createTask(using: 1, name: "Flight Deck Management", reference: "FAA-H-8083-2, FAA-H-8083-3; AC 120-71; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with safe flight deck management practices.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.B.K1", "Passenger briefing requirements, to include operation and required use of safety restraint systems.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.B.K2", "Use of appropriate checklists.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.B.K3", "Requirements for current and appropriate navigation data.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.II.B.R1", "Improper use of systems or equipment, to include automation and portable electronic devices.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.B.R2", "Flying with unresolved discrepancies.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.II.B.S1", "Secure all items in the flight deck and cabin.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.B.S2", "Conduct an appropriate pre-takeoff briefing, to include identifying the PIC, use of safety belts, shoulder harnesses, doors, sterile flight deck, and emergency procedures.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.B.S3", "Program and manage the airplane’s automation properly.", in: task2, using: context)
        
        retValue.append(task2)
        
        // -- Engine Starting
        let task3 = TaskFactory.createTask(using: 2, name: "Engine Starting", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-25; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with recommended engine starting procedures.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.C.K1", "Starting under various conditions.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.C.K2", "Starting the engine(s) by use of external power.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.C.K3", "Engine limitations as they relate to starting.", in: task3, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.II.C.R1", "The applicant demonstrates the ability to identify, assess and mitigate risks, encompassing: Propeller safety.", in: task3, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.II.C.S1", "Position the airplane properly considering structures, other aircraft, wind, and the safety of nearby persons and property.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.C.S2", "Complete the appropriate checklist.", in: task3, using: context)
        
        retValue.append(task3)
        
        // -- Taxiing
        let task4 = TaskFactory.createTask(using: 3, name: "Taxiing", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-23; POH/AFM; AC 00-6", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with preparing for safe flight.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K1", "Current airport aeronautical references and information resources such as the Chart Supplement, airport diagram, and NOTAMS.", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K2", "Taxi instructions/clearances.", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K3", "Airport markings, signs, and lights.", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K4", "Visual indicators for wind.", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K5", "Aircraft lighting.", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K6", "Procedures for:", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K6a", "a. Appropriate flight deck activities prior to taxi, including route planning and the location of Hot Spots", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K6b", "b. Radio communications at towered and nontowered airports", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K6c", "c. Entering or crossing runways", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K6d", "d. Night taxi operations", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.D.K6e", "e. Low visibility taxi operations", in: task4, using: context)
     
        TaskFactory.createComponent(type: .risk, id: "PA.II.D.R1", "Inappropriate activities and distractions.", in: task4, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.D.R2", "Confirmation or expectation bias as related to taxi instructions.", in: task4, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.D.R3", "A taxi route or departure runway change.", in: task4, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.II.D.S1", "Receive and correctly read back clearances/instructions, if applicable.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.D.S2", "Use an airport diagram or taxi chart during taxi, if published, and maintain situational  awareness.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.D.S3", "Position the flight controls for the existing wind.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.D.S4", "Complete the appropriate checklist.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.D.S5", "Perform a brake check immediately after the airplane begins moving.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.D.S6", "Maintain positive control of the airplane during ground operations by controlling direction and speed without excessive use of brakes.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.D.S7", "Comply with airport/taxiway markings, signals, and ATC clearances and instructions.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.D.S8", "Position the airplane properly relative to hold lines.", in: task4, using: context)
        
        retValue.append(task4)
        
        // -- Before Takeoff Check
        let task5 = TaskFactory.createTask(using: 0, name: "Before Takeoff Check", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-23; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with the before takeoff check.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.F.K1", "Purpose of pre-takeoff checklist items including:", in: task5, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.F.K1a", "a. Reasons for checking each item", in: task5, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.F.K1b", "b. Detecting malfunctions", in: task5, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.II.F.K1c", "c. Ensuring the airplane is in safe operating condition as recommended by the manufacturer", in: task5, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.II.F.R1", "Division of attention while conducting pre-flight checks.", in: task5, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.F.R2", "Unexpected runway changes by ATC.", in: task5, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.F.R3", "Wake turbulence.", in: task5, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.II.F.R4", "A powerplant failure during takeoff or other malfunction considering operational factors such as airplane characteristics, runway/takeoff path length, surface conditions, environmental conditions, and obstructions", in: task5, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.II.F.S1", "Review takeoff performance.", in: task5, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.F.S2", "Complete the appropriate checklist.", in: task5, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.F.S3", "Position the airplane appropriately considering other aircraft, vessels, and wind.", in: task5, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.F.S4", "Divide attention inside and outside the flight deck.", in: task5, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.II.F.S5", "Verify that engine parameters and airplane configuration are suitable.", in: task5, using: context)
        
        retValue.append(task5)
        
        return retValue
    }
}
