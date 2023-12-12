//
//  TaskFactory+Emergency.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData


// MARK: - This handles all the go around takeoff and landing
extension TaskFactory {
    static func generateEmergency(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        
        // -- Emergency Descent
        retValue.append(loadDescent(using: context, and: aSection))
       
        // -- Emergency descent and approach
        retValue.append(loadLanding(using: context, and: aSection))
       
        // -- Malfunctions
        retValue.append(loadMalfunctions(using: context, and: aSection))
       
        // -- Survival gear
        retValue.append(loadGear(using: context, and: aSection))
        
        return retValue
    }
    
    
    private static func loadDescent(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 0, name: "Emergency Descent", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with an emergency descent.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.A.K1", "Situations that would require an emergency descent (e.g., depressurization, smoke, or engine fire).", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.A.K2", "Immediate action items and emergency procedures.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.A.K3", "Airspeed, to include airspeed limitations.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IX.A.R1", "Failure to consider altitude, wind, terrain, obstructions, and available glide distance.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IX.A.R2", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IX.A.R3", "Improper airplane configuration.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IX.A.R4", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IX.A.S1", "Clear the area.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.A.S2", "Establish and maintain the appropriate airspeed and configuration appropriate to the scenario specified by the evaluator and as covered in POH/AFM for the emergency descent.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.A.S3", "Maintain orientation, divide attention appropriately, and plan and execute a smooth recovery.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.A.S4", "Use bank angle between 30° and 45° to maintain positive load factors during the descent.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.A.S5", "Maintain appropriate airspeed +0/-10 knots, and level off at a specified altitude ±100 feet.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.A.S6", "Complete the appropriate checklist.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadLanding(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 1, name: "Emergency Approach and Landing (Simulated) (ASEL, ASES)", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM", objective: "TTo determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with emergency approach and landing procedures.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.B.K1", "Immediate action items and emergency procedures.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.B.K2", "Airspeed, to include:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.B.K2a", "a. Importance of best glide speed and its relationship to distance", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.B.K2b", "b. Difference between best glide speed and minimum sink speed", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.B.K2c", "c. Effects of wind on glide distance", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.B.K3", "Effects of atmospheric conditions on emergency approach and landing.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.B.K4", "A stabilized approach, to include energy management concepts.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.B.K5", "ELTs and other emergency locating devices.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.B.K6", "ATC services to aircraft in distress.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IX.B.R1", "Failure to consider altitude, wind, terrain, obstructions, gliding distance, and available landing distance.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IX.B.R2", "Failure to plan and follow a flightpath to the selected landing area.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IX.B.R3", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IX.B.R4", "Improper airplane configuration.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IX.B.R5", "Low altitude maneuvering including stall, spin, or CFIT.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IX.B.R6", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IX.B.S1", "Establish and maintain the recommended best glide airspeed, ±10 knots.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.B.S2", "Configure the airplane in accordance with the POH/AFM and existing conditions.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.B.S3", "Select a suitable landing area considering altitude, wind, terrain, obstructions, and available glide distance.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.B.S4", "Plan and follow a flightpath to the selected landing area considering altitude, wind, terrain, and obstructions.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.B.S5", "Prepare for landing as specified by the evaluator.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.B.S6", "Complete the appropriate checklist.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadMalfunctions(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 2, name: "Systems and Equipment Malfunctions", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with system and equipment malfunctions appropriate to the airplane provided for the practical test and analyzing the situation and take appropriate action for simulated emergencies", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K1", "Partial or complete power loss related to the specific powerplant, including:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K1a", "a. Engine roughness or overheat", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K1b", "b. Carburetor or induction icing", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K1c", "c. Loss of oil pressure", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K1d", "d. Fuel starvation", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K2", "System and equipment malfunctions specific to the airplane, including:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K2a", "a. Electrical malfunction", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K2b", "b. Vacuum/pressure and associated flight instrument malfunctions", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K2c", "c. Pitot/static system malfunction", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K2d", "d. Electronic flight deck display malfunction", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K2e", "e. Landing gear or flap malfunction", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K2f", "f. Inoperative trim", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K3", "Smoke/fire/engine compartment fire.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K4", "Any other system specific to the airplane (e.g., supplemental oxygen, deicing).", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.C.K5", "Inadvertent door or window opening.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IX.C.R1", "Failure to use the proper checklist for a system or equipment malfunction.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IX.C.R2", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IX.C.S1", "Describe appropriate action for simulated emergencies specified by the evaluator, from at least three of the elements or sub-elements listed in K1 through K5 above.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.C.S2", "Complete the appropriate checklist.", in: task1, using: context)
        
        return task1
    }

    private static func loadGear(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 3, name: "Emergency Equipment and Survival Gear", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with emergency equipment, and survival gear appropriate to the airplane and environment encountered during flight and identifying appropriate equipment that should be onboard the airplane.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.D.K1", "Emergency Locator Transmitter (ELT) operations, limitations, and testing requirements.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.D.K2", "Fire extinguisher operations and limitations.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.D.K3", "Emergency equipment and survival gear needed for:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.D.K3a", "a. Climate extremes (hot/cold)", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.D.K3b", "b. Mountainous terrain", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IX.D.K3c", "c. Overwater operations", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IX.D.R1", "Failure to plan for basic needs (water, clothing, shelter) for 48 to 72 hours.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IX.D.S1", "Identify appropriate equipment and personal gear.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IX.D.S2", "Brief passengers on proper use of on-board emergency equipment and survival gear.", in: task1, using: context)
        
        return task1
    }
}
