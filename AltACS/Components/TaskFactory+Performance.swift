//
//  TaskFactory+Performance.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData


// MARK: - This handles all the go around takeoff and landing
extension TaskFactory {
    static func generatePerformance(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        // -- Steep Turns
        retValue.append(loadSteepTurns(using: context, and: aSection))
        
        // -- Ground Reference Maneuvers
        retValue.append(loadGRM(using: context, and: aSection))
        
        return retValue
    }
    
    private static func loadSteepTurns(using context: ModelContext, and aSection: TestSection) -> Task {
        
        let task1 = TaskFactory.createTask(using: 0, name: "Steep Turns", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with steep turns.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.A.K1", "Purpose of steep turns.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.A.K2", "Aerodynamics associated with steep turns, to include:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.A.K2a", "a. Coordinated and uncoordinated flight", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.A.K2b", "b. Overbanking tendencies", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.A.K2c", "c. Maneuvering speed, including the impact of weight changes", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.A.K2d", "d. Load factor and accelerated stalls", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.A.K2e", "e. Rate and radius of turn", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.V.A.R1", "Failure to divide attention between airplane control and orientation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.V.A.R2", "Collision hazards, to include aircraft and terrain.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.V.A.R3", "Low altitude maneuvering including stall, spin, or CFIT.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.V.A.R4", "Distractions, improper task management, loss of situational awareness, or disorientation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.V.A.R5", "Failure to maintain coordinated flight.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.V.A.S1", "Clear the area.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.A.S2", "Establish the manufacturer’s recommended airspeed; or if one is not available, an airspeed not to exceed Va.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.A.S3", "Roll into a coordinated 360° steep turn with approximately a 45° bank.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.A.S4", "Perform the Task in the opposite direction, as specified by evaluator.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.A.S5", "Maintain the entry altitude ±100 feet, airspeed ±10 knots, bank ±5°, and roll out on the entry heading ±10°.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadGRM(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 1, name: "Ground Reference Maneuvers", reference: "14 CFR part 61; FAA-H-8083-2, FAA-H-8083-3", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with ground reference maneuvering which may include a rectangular course, S-turns, and turns around a point.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.B.K1", "Purpose of ground reference maneuvers.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.B.K2", "Effects of wind on ground track and relation to a ground reference point.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.B.K3", "Effects of bank angle and groundspeed on rate and radius of turn.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.V.B.K4", "Relationship of rectangular course to airport traffic pattern.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.V.B.R1", "Failure to divide attention between airplane control and orientation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.V.B.R2", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.V.B.R3", "Low altitude maneuvering including stall, spin, or CFIT.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.V.B.R4", "Distractions, improper task management, loss of situational awareness, or disorientation.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.V.B.R5", "Failure to maintain coordinated flight.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S1", "Clear the area.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S2", "Select a suitable ground reference area, line, or point as appropriate.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S3", "Plan the maneuver: (Must do at least one of the following", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S3a", "a. Rectangular course: enter a left or right pattern, 600 to 1,000 feet above ground level (AGL) at an appropriate distance from the selected reference area, 45° to the downwind leg", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S3b", "b. S-turns: enter perpendicular to the selected reference line, 600 to 1,000 feet AGL at an appropriate distance from the selected reference area", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S3c", "c. Turns around a point: enter at an appropriate distance from the reference point, 600 to 1,000 feet AGL at an appropriate distance from the selected reference area", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S4", "Apply adequate wind-drift correction during straight and turning flight to maintain a constant ground track around a rectangular reference area, or to maintain a constant radius turn on each side of a selected reference line or point.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S5", "If performing S-Turns, reverse the turn directly over the selected reference line; if performing turns around a point, complete turns in either direction, as specified by the evaluator", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S6", "Divide attention between airplane control, traffic avoidance and the ground track while maintaining coordinated flight.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.V.B.S7", "Maintain altitude ±100 feet; maintain airspeed ±10 knots.", in: task1, using: context)
        
        return task1
    }
}
