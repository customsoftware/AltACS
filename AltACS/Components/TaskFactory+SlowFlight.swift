//
//  TaskFactory+SlowFlight.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData

// MARK: - This handles all the go around takeoff and landing
extension TaskFactory {
    static func generateSlowFlight(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        
        // -- Slow Flight
        retValue.append(loadSlowFlight(using: context, and: aSection))
        
        // -- Power-Off stalls
        retValue.append(loadPowerOff(using: context, and: aSection))
        
        // -- Power-On stalls
        retValue.append(loadPowerOn(using: context, and: aSection))
        
        // -- Spin Awareness
        retValue.append(loadSpin(using: context, and: aSection))
        
        return retValue
    }
    
    private static func loadSlowFlight(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 0, name: "Maneuvering During Slow Flight", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-25; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with maneuvering during slow flight.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.A.K1", "Aerodynamics associated with slow flight in various airplane configurations, to include the relationship between angle of attack, airspeed, load factor, power setting, airplane weight and center of gravity, airplane attitude, and yaw effects.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VII.A.R1", "Inadvertent slow flight and flight with a stall warning, which could lead to loss of control.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.A.R2", "Range and limitations of stall warning indicators (e.g., airplane buffet, stall horn, etc.).", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.A.R3", "Failure to maintain coordinated flight.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.A.R4", "Effect of environmental elements on airplane performance (e.g., turbulence, microbursts, and high-density altitude).", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.A.R5", "Collision hazards, to include aircraft, terrain, obstacles, and wires,", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.A.R6", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VII.A.S1", "Clear the area.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.A.S2", "Select an entry altitude that will allow the Task to be completed no lower than 1,500 feet AGL (ASEL, ASES) or 3,000 feet AGL (AMEL, AMES).", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.A.S3", "Establish and maintain an airspeed at which any further increase in angle of attack, increase in load factor, or reduction in power, would result in a stall warning (e.g., airplane buffet, stall horn, etc.).", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.A.S4", "Accomplish coordinated straight-and-level flight, turns, climbs, and descents with the airplane configured as specified by the evaluator without a stall warning (e.g., airplane buffet, stall horn, etc.).", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.A.S5", "Maintain the specified altitude, ±100 feet; specified heading, ±10°; airspeed, +10/-0 knots; and specified angle of bank, ±10°.", in: task1, using: context)
        
        return task1
    }

    private static func loadPowerOff(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 1, name: "Power-Off Stalls", reference: "FAA-H-8083-2, FAA-H-8083-3; AC 61-67; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with power-off stalls.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.B.K1", "Aerodynamics associated with stalls in various airplane configurations, to include the relationship between angle of attack, airspeed, load factor, power setting, airplane weight and center of gravity, airplane attitude, and yaw effects.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.B.K2", "Stall characteristics (i.e., airplane design) and impending stall and full stall indications (i.e., how to recognize by sight, sound, or feel).", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.B.K3", "Factors and situations that can lead to a power-off stall and actions that can be taken to prevent it.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.B.K4", "Fundamentals of stall recovery.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VII.B.R1", "Factors and situations that could lead to an inadvertent power-off stall, spin, and loss of control.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.B.R2", "Range and limitations of stall warning indicators (e.g., airplane buffet, stall horn, etc.).", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.B.R3", "Failure to recognize and recover at the stall warning during normal operations.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.B.R4", "Improper stall recovery procedure.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.B.R5", "Secondary stalls, accelerated stalls, and cross-control stalls.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.B.R6", "Effect of environmental elements on airplane performance related to power-off stalls (e.g., turbulence, microbursts, and high-density altitude).", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.B.R7", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.B.R8", "Distractions, improper task management, loss of situational awareness, or disorientation.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S1", "Clear the area.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S2", "Select an entry altitude that will allow the Task to be completed no lower than 1,500 feet AGL (ASEL, ASES) or 3,000 feet AGL (AMEL, AMES).", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S3", "Configure the airplane in the approach or landing configuration, as specified by the evaluator, and maintain coordinated flight throughout the maneuver.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S4", "Establish a stabilized descent.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S5", "Transition smoothly from the approach or landing attitude to a pitch attitude that will induce a stall.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S6", "Maintain a specified heading ±10° if in straight flight; maintain a specified angle of bank not to exceed 20°, ±10° if in turning flight, while inducing the stall.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S7", "Acknowledge cues of the impending stall and then recover promptly after a full stall occurs.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S8", "Execute a stall recovery in accordance with procedures set forth in the POH/AFM.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S9", "Configure the airplane as recommended by the manufacturer, and accelerate to Vx or Vy.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.B.S10", "Return to the altitude, heading, and airspeed specified by the evaluator.", in: task1, using: context)
        
        return task1
    }

    private static func loadPowerOn(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 2, name: "Power-On Stalls", reference: "FAA-H-8083-2, FAA-H-8083-3; AC 61-67; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with power-on stalls.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.C.K1", "Aerodynamics associated with stalls in various airplane configurations, to include the relationship between angle of attack, airspeed, load factor, power setting, airplane weight and center of gravity, airplane attitude, and yaw effects.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.C.K2", "Stall characteristics (i.e., airplane design) and impending stall and full stall indications (i.e., how to recognize by sight, sound, or feel).", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.C.K3", "Factors and situations that can lead to a power-on stall and actions that can be taken to prevent it.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.C.K4", "Fundamentals of stall recovery.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VII.C.R1", "Factors and situations that could lead to an inadvertent power-on stall, spin, and loss of control.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.C.R2", "Range and limitations of stall warning indicators (e.g., airplane buffet, stall horn, etc.).", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.C.R3", "Failure to recognize and recover at the stall warning during normal operations.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.C.R4", "Improper stall recovery procedure.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.C.R5", "Secondary stalls, accelerated stalls, and cross-control stalls.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.C.R6", "Effect of environmental elements on airplane performance related to power-on stalls (e.g., turbulence, microbursts, and high-density altitude).", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.C.R7", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.C.R8", "Distractions, improper task management, loss of situational awareness, or disorientation.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S1", "Clear the area.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S2", "Select an entry altitude that will allow the Task to be completed no lower than 1,500 feet AGL (ASEL, ASES) or 3,000 feet AGL (AMEL, AMES).", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S3", "Establish the takeoff, departure, or cruise configuration, as specified by the evaluator, and maintain coordinated flight throughout the maneuver.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S4", "Set power (as assigned by the evaluator) to no less than 65 percent power.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S5", "Transition smoothly from the takeoff or departure attitude to the pitch attitude that will induce a stall.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S6", "Maintain a specified heading ±10° if in straight flight; maintain a specified angle of bank not to exceed 20°, ±10° if in turning flight, while inducing the stall.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S7", "Acknowledge cues of the impending stall and then recover promptly after a full stall occurs.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S8", "Execute a stall recovery in accordance with procedures set forth in the POH/AFM.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S9", "Configure the airplane as recommended by the manufacturer, and accelerate to Vx or Vy.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VII.C.S10", "Return to the altitude, heading, and airspeed specified by the evaluator.", in: task1, using: context)
       
        return task1
    }

    private static func loadSpin(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 3, name: "Spin Awareness", reference: "FAA-H-8083-2, FAA-H-8083-3; AC 61-67; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with spins, flight situations where unintentional spins may occur and procedures for recovery from unintentional spins.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.D.K1", "Aerodynamics associated with spins in various airplane configurations, to include the relationship between angle of attack, airspeed, load factor, power setting, airplane weight and center of gravity, airplane attitude, and yaw effects.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.D.K2", "What causes a spin and how to identify the entry, incipient, and developed phases of a spin.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VII.D.K3", "Spin recovery procedure.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VII.D.R1", "Factors and situations that could lead to an inadvertent spin and loss of control.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.D.R2", "Range and limitations of stall warning indicators (e.g., airplane buffet, stall horn, etc.).", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.D.R3", "Improper spin recovery procedure.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.D.R4", "Effect of environmental elements on airplane performance related to spins (e.g., turbulence, microbursts, and high-density altitude).", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.D.R5", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VII.D.R6", "Distractions, improper task management, loss of situational awareness, or disorientation.", in: task1, using: context)
        
        
        return task1
    }
}
