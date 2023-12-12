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

        // -- Straight and level flight
        retValue.append(loadStraight(using: context, and: aSection))
        
        // -- Constant airspeed climbs
        retValue.append(loadClimb(using: context, and: aSection))
        
        // -- Constant airspeed descent
        retValue.append(loadDescent(using: context, and: aSection))
        
        // -- Turns to headings
        retValue.append(loadTurns(using: context, and: aSection))
        
        // -- Recovery from unusual attitudes
        retValue.append(loadRecovery(using: context, and: aSection))
        
        // -- Radio comms and navigation
        retValue.append(loadRadio(using: context, and: aSection))
        
        
        return retValue
    }
    
    private static func loadStraight(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 0, name: "Straight-and-Level Flight", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-15", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with flying during straight-and-level flight solely by reference to instruments.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.A.K1", "Flight instruments as related to:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.A.K1a", "a. Sensitivity, limitations, and potential errors in unusual attitudes", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.A.K1b", "b. Correlation (pitch instruments/bank instruments)", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.A.K1c", "c. Function and operation", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.A.K1d", "d. Proper instrument cross-check techniques", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.A.R1", "Instrument flying hazards to include failure to maintain VFR, spatial disorientation, loss of control, fatigue, stress, and emergency off airport landings", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.A.R2", "Failure to seek assistance or declare an emergency in a deteriorating situation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.A.R3", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.A.R4", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.A.S1", "Maintain straight-and-level flight using proper instrument cross-check and interpretation, and coordinated control application.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.A.S2", "Maintain altitude ±200 feet, heading ±20°, and airspeed ±10 knots.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadClimb(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 1, name: "Constant Airspeed Climbs", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-15", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with attitude instrument flying during constant airspeed climbs solely by reference to instruments.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.B.K1", "Flight instruments as related to:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.B.K1a", "a. Sensitivity, limitations, and potential errors in unusual attitudes", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.B.K1b", "b. Correlation (pitch instruments/bank instruments)", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.B.K1c", "c. Function and operation", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.B.K1d", "d. Proper instrument cross-check techniques", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.B.R1", "Instrument flying hazards to include failure to maintain VFR, spatial disorientation, loss of control, fatigue, stress, and emergency off airport landings", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.B.R2", "Failure to seek assistance or declare an emergency in a deteriorating situation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.B.R3", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.B.R4", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.B.S1", "Transition to the climb pitch attitude and power setting on an assigned heading using proper instrument cross-check and interpretation, and coordinated flight control application.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.B.S2", "Climb at a constant airspeed to specific altitudes in straight flight and turns.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.B.S3", "Level off at the assigned altitude and maintain altitude ±200 feet, heading ±20°, and airspeed ±10 knots.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadDescent(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 2, name: "Constant Airspeed Descents", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-15", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with attitude instrument flying during constant airspeed descents solely by reference to instruments.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.C.K1", "Flight instruments as related to:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.C.K1a", "a. Sensitivity, limitations, and potential errors in unusual attitudes", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.C.K1b", "b. Correlation (pitch instruments/bank instruments)", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.C.K1c", "c. Function and operation", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.C.K1d", "d. Proper instrument cross-check techniques", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.C.R1", "Instrument flying hazards to include failure to maintain VFR, spatial disorientation, loss of control, fatigue, stress, and emergency off airport landings", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.C.R2", "Failure to seek assistance or declare an emergency in a deteriorating situation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.C.R3", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.C.R4", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.C.S1", "Transition to the descent pitch attitude and power setting on an assigned heading using proper instrument cross-check and interpretation, and coordinated flight control application.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.C.S2", "Descend at a constant airspeed to specific altitudes in straight flight and turns.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.C.S3", "Level off at the assigned altitude and maintain altitude ±200 feet, heading ±20°, and airspeed ±10 knots.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadTurns(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 3, name: "Turns to Headings", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-15", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with attitude instrument flying during turns to headings solely by reference to instruments.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.D.K1", "Flight instruments as related to:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.D.K1a", "a. Sensitivity, limitations, and potential errors in unusual attitudes", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.D.K1b", "b. Correlation (pitch instruments/bank instruments)", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.D.K1c", "c. Function and operation", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.D.K1d", "d. Proper instrument cross-check techniques", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.D.R1", "Instrument flying hazards to include failure to maintain VFR, spatial disorientation, loss of control, fatigue, stress, and emergency off airport landings", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.D.R2", "Failure to seek assistance or declare an emergency in a deteriorating situation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.D.R3", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.D.R4", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.D.S1", "Turn to headings, maintain altitude ±200 feet, maintain a standard rate turn, roll out on the assigned heading ±10°, and maintain airspeed ±10 knots.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadRecovery(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 4, name: "Recovery from Unusual Flight Attitudes", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-15", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with attitude instrument flying while recovering from unusual attitudes solely by reference to instruments.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.E.K1", "Flight instruments as related to:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.E.K1a", "a. Sensitivity, limitations, and potential errors in unusual attitudes", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.E.K1b", "b. Correlation (pitch instruments/bank instruments)", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.E.K1c", "c. Function and operation", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.E.K1d", "d. Proper instrument cross-check techniques", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.E.R1", "Instrument flying hazards to include failure to maintain VFR, spatial disorientation, loss of control, fatigue, stress, and emergency off airport landings", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.E.R2", "Failure to seek assistance or declare an emergency in a deteriorating situation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.E.R3", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.E.R4", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.E.R5", "Failure to interpret flight instruments.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.E.R6", "Failure to unload the wings in recovering from high G situations.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.E.R7", "Exceeding the operating envelope during the recovery.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.E.S1", "Recognize unusual flight attitudes; perform the correct, coordinated, and smooth flight control application to resolve unusual pitch and bank attitudes while staying within the airplane’s limitations and flight parameters.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadRadio(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 5, name: "Radio Communications, Navigation Systems/Facilities, and Radar Services", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-15, FAA-H-8083-25", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with radio communications, navigation systems/facilities, and radar services available for use during flight solely by reference to instruments.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.F.K1", "Operating communications equipment to include identifying and selecting radio frequencies, requesting and following ATC instructions.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.F.K2", "Operating navigation equipment to include functions and displays, and following bearings, radials, or courses.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VIII.F.K3", "Air traffic control facilities and services.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.F.R1", "Failure to seek assistance or declare an emergency in a deteriorating situation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VIII.F.R2", "Failure to utilize all available resources (e.g., automation, ATC, and flight deck planning aids).", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.F.S1", "Maintain airplane control while selecting proper communications frequencies, identifying the appropriate facility, and managing navigation equipment.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.F.S2", "Comply with ATC instructions.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VIII.F.S3", "Maintain altitude ±200 feet, heading ±20°, and airspeed ±10 knots.", in: task1, using: context)
        
        return task1
    }
    
}
