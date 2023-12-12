//
//  TaskFactory+GoAround.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData


// MARK: - This handles all the go around takeoff and landing
extension TaskFactory {
    static func generateTOGoAroundLandingTasks(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        // -- Normal Takeoff and Climb
        retValue.append(loadTakeOff(using: context, and: aSection))
        
        // -- Normal Approach and Landing
        retValue.append(loadLanding(using: context, and: aSection))
        
        // -- Soft-Field Takeoff and Climb
        retValue.append(loadSoftTakeoff(using: context, and: aSection))
        
        // -- Soft-Field Approach and Landing
        retValue.append(loadSoftLanding(using: context, and: aSection))
        
        // -- Short-Field Takeoff and Maximum Performance Climb
        retValue.append(loadShortTakeoff(using: context, and: aSection))
        
        // -- Short-Field Approach and Landing
        retValue.append(loadShortLanding(using: context, and: aSection))
        
        // -- Forward Slip to a Landing
        retValue.append(loadForwardSlip(using: context, and: aSection))
        
        // -- Go-Around/Rejected Landing
        retValue.append(loadGoAround(using: context, and: aSection))
        
        return retValue
    }
    
    private static func loadTakeOff(using context: ModelContext, and aSection: TestSection) -> Task{
        let task1 = TaskFactory.createTask(using: 0, name: "Normal Takeoff and Climb", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-23; POH/AFM; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with a normal takeoff, climb operations, and rejected takeoff procedures.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.A.K1", "Effects of atmospheric conditions, including wind, on takeoff and climb performance.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.A.K2", "VX and VY.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.A.K3", "Appropriate airplane configuration.", in: task1, using: context)
       
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R1", "Selection of runway based on pilot capability, airplane performance and limitations, available distance, and wind.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R2", "Effects of:", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R2a", "a. Crosswind", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R2b", "b. Windshear", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R2c", "c. Tailwind", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R2d", "d. Wake turbulence", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R2e", "e. Runway surface/condition", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R3", "Abnormal operations, to include planning for:", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R3a", "a. Rejected takeoff", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R3b", "b. Engine failure in takeoff/climb phase of flight", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R4", "Collision hazards, to include aircraft, terrain, obstacles, wires, vehicles, vessels, persons, and wildlife.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R5", "Low altitude maneuvering including stall, spin, or CFIT.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.A.R6", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S1", "Complete the appropriate checklist.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S2", "Make radio calls as appropriate.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S3", "Verify assigned/correct runway.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S4", "Ascertain wind direction with or without visible wind direction indicators.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S5", "Position the flight controls for the existing wind.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S6", "Clear the area; taxi into takeoff position and align the airplane on the runway centerline.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S7", "Confirm takeoff power and proper engine and flight instrument indications prior to rotation.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S9", "Rotate and lift off at the recommended airspeed and accelerate to VY.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S11", "Establish a pitch attitude to maintain the manufacturer’s recommended speed or VY, +10/-5 knots.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S12", "Configure the airplane in accordance with manufacturer’s guidance.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S13", "Maintain VY +10/-5 knots to a safe maneuvering altitude.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S14", "Maintain directional control and proper wind-drift correction throughout takeoff and climb.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.A.S15", "Comply with noise abatement procedures.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadLanding(using context: ModelContext, and aSection: TestSection) -> Task{
        let task2 = TaskFactory.createTask(using: 1, name: "Normal Approach and Landing", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-23; POH/AFM; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with a normal approach and landing with emphasis on proper use of flight controls.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.B.K1", "A stabilized approach, to include energy management concepts.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.B.K2", "Effects of atmospheric conditions, including wind, on approach and landing performance.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.B.K3", "Wind correction techniques on approach and landing.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B..R1", "Selection of runway or approach path and touchdown area based on pilot capability, airplane performance and limitations, available distance, and wind.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R2", "Effects of:", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R2a", "a. Crosswind", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R2b", "b. Windshear", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R2c", "c. Tailwind", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R2d", "d. Wake turbulence", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R2e", "e. Runway surface/condition", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R3", "Planning for:", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R3a", "a. Go-around and rejected landing", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R3b", "b. Land and hold short operations (LAHSO)", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R4", "Collision hazards, to include aircraft, terrain, obstacles, wires, vehicles, vessels, persons, and wildlife.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R5", "Low altitude maneuvering including stall, spin, or CFIT.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.B.R6", "Distractions, loss of situational awareness, incorrect airport surface approach and landing, or improper task management.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S1", "Complete the appropriate checklist.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S2", "Make radio calls as appropriate.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S3", "Ensure the airplane is aligned with the correct/assigned runway or landing surface.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S4", "Scan runway or landing surface and the adjoining area for traffic and obstructions.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S5", "Select and aim for a suitable touchdown point considering the wind, landing surface, and obstructions.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S6", "Establish the recommended approach and landing configuration and airspeed, and adjust pitch attitude and power as required to maintain a stabilized approach.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S7", "Maintain manufacturer’s published approach airspeed or in its absence not more than 1.3 VSO, +10/-5 knots with gust factor applied.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S8", "Maintain directional control and appropriate crosswind correction throughout the approach and landing.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S9", "Make smooth, timely, and correct control application during round out and touchdown.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S10", "Touch down at a proper pitch attitude, within 400 feet beyond or on the specified point, with no side drift, and with the airplane’s longitudinal axis aligned with and over the runway center/landing path.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S11", "Execute a timely go-around if the approach cannot be made within the tolerances specified above or for any other condition that may result in an unsafe approach or landing.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.B.S12", "Utilize runway incursion avoidance procedures.", in: task2, using: context)
        
        return task2
    }
    
    private static func loadSoftTakeoff(using context: ModelContext, and aSection: TestSection) -> Task{
        let task3 = TaskFactory.createTask(using: 2, name: "Soft-Field Takeoff and Climb", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with a soft-field takeoff, climb operations, and rejected takeoff procedures.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.C.K1", "Effects of atmospheric conditions, including wind, on takeoff and climb performance.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.C.K2", "VX and VY.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.C.K3", "Appropriate airplane configuration.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.C.K4", "Ground effect.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.C.K5", "Importance of weight transfer from wheels to wings.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.C.K6", "Left turning tendencies.", in: task3, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R1", "Selection of runway based on pilot capability, airplane performance and limitations, available distance, and wind.", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R2", "Effects of:", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R2a", "a. Crosswind", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R2b", "b. Windshear", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R2c", "c. Tailwind", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R2d", "d. Wake turbulence", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R2e", "e. Runway surface/condition", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R3", "Abnormal operations, to include planning for:", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R3a", "a. Rejected takeoff", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R3b", "b. Engine failure in takeoff/climb phase of flight", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R4", "Collision hazards, to include aircraft, terrain, obstacles, wires, vehicles, vessels, persons, and wildlife.", in: task3, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R5", "Low altitude maneuvering including stall, spin, or CFIT.", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.C.R6", "Distractions, loss of situational awareness, or improper task management.", in: task3, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S1", "Complete the appropriate checklist.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S2", "Make radio calls as appropriate.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S3", "Verify assigned/correct runway.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S4", "Ascertain wind direction with or without visible wind direction indicators.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S5", "Position the flight controls for the existing wind.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S6", "Clear the area; taxi into takeoff position and align the airplane on the runway centerline.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S7", "Confirm takeoff power and proper engine and flight instrument indications prior to rotation.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S9", "Rotate and lift off at the recommended airspeed and accelerate to VY.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S11", "Establish a pitch attitude to maintain the manufacturer’s recommended speed or VY, +10/-5 knots.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S12", "Configure the airplane in accordance with manufacturer’s guidance.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S13", "Maintain VY +10/-5 knots to a safe maneuvering altitude.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S14", "Maintain directional control and proper wind-drift correction throughout takeoff and climb.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.C.S15", "Comply with noise abatement procedures.", in: task3, using: context)
        
        return task3
    }
    
    private static func loadSoftLanding(using context: ModelContext, and aSection: TestSection) -> Task{
        let task2 = TaskFactory.createTask(using: 3, name: "Soft-Field Approach and Landing", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with a normal approach and landing with emphasis on proper use of flight controls.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.D.K1", "A stabilized approach, to include energy management concepts.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.D.K2", "Effects of atmospheric conditions, including wind, on approach and landing performance.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.D.K3", "Wind correction techniques on approach and landing.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R1", "Selection of runway based on pilot capability, airplane performance and limitations, available distance, and wind.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R2", "Effects of:", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R2a", "a. Crosswind", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R2b", "b. Windshear", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R2c", "c. Tailwind", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R2d", "d. Wake turbulence", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R2e", "e. Runway surface/condition", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R3", "Planning for:", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R3a", "a. Go-around and rejected landing", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R3b", "b. Land and hold short operations (LAHSO)", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R4", "Collision hazards, to include aircraft, terrain, obstacles, wires, vehicles, vessels, persons, and wildlife.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R5", "Low altitude maneuvering including stall, spin, or CFIT.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.D.R6", "Distractions, loss of situational awareness, incorrect airport surface approach and landing, or improper task management.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S1", "Complete the appropriate checklist.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S2", "Make radio calls as appropriate.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S3", "Ensure the airplane is aligned with the correct/assigned runway.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S4", "Scan runway and the adjoining area for traffic and obstructions.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S5", "Select and aim for a suitable touchdown point considering the wind, landing surface, and obstructions.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S6", "Establish the recommended approach and landing configuration and airspeed, and adjust pitch attitude and power as required to maintain a stabilized approach.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S7", "Maintain manufacturer’s published approach airspeed or in its absence not more than 1.3 VSO, +10/-5 knots with gust factor applied.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S8", "Maintain directional control and appropriate crosswind correction throughout the approach and landing.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S9", "Make smooth, timely, and correct control application during round out and touchdown.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S10", "Touch down at a proper pitch attitude, within 400 feet beyond or on the specified point, with no side drift, and with the airplane’s longitudinal axis aligned with and over the runway center/landing path.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S11", "Maintain elevator as recommended by manufacturer during rollout and exit the “soft” area at a speed that would preclude sinking into the surface.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S12", "Execute a timely go-around if the approach cannot be made within the tolerances specified above or for any other condition that may result in an unsafe approach or landing.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.D.S13", "Maintain proper position of the flight controls and sufficient speed to taxi while on the soft surface.", in: task2, using: context)
        
        
        return task2
    }

    private static func loadShortTakeoff(using context: ModelContext, and aSection: TestSection) -> Task{
        let task3 = TaskFactory.createTask(using: 4, name: "Short-Field Takeoff and Maximum Performance Climb", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with a short-field takeoff, maximum performance climb operations, and rejected takeoff procedures.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.E.K1", "Effects of atmospheric conditions, including wind, on takeoff and climb performance.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.E.K2", "Vx and Vy.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.E.K3", "Appropriate airplane configuration.", in: task3, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R1", "Selection of runway based on pilot capability, airplane performance and limitations, available distance, and wind.", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R2", "Effects of:", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R2a", "a. Crosswind", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R2b", "b. Windshear", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R2c", "c. Tailwind", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R2d", "d. Wake turbulence", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R2e", "e. Runway surface/condition", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R3", "Abnormal operations, to include planning for:", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R3a", "a. Rejected takeoff", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R3b", "b. Engine failure in takeoff/climb phase of flight", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R4", "Collision hazards, to include aircraft, terrain, obstacles, wires, vehicles, vessels, persons, and wildlife.", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R5", "Low altitude maneuvering including stall, spin, or CFIT.", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.E.R6", "Distractions, loss of situational awareness, or improper task management.", in: task3, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S1", "Complete the appropriate checklist.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S2", "Make radio calls as appropriate.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S3", "Verify assigned/correct runway.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S4", "Ascertain wind direction with or without visible wind direction indicators.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S5", "Position the flight controls for the existing wind.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S6", "Clear the area, taxi into takeoff position and align the airplane on the runway centerline utilizing maximum available takeoff area.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S7", "Apply brakes while setting engine power to achieve maximum performance.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S8", "Confirm takeoff power prior to brake release and verify proper engine and flight instrument indications prior to rotation.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S9", "Rotate and lift off at the recommended airspeed and accelerate to the recommended obstacle clearance airspeed or Vx, +10/-5 knots.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S10", "Establish a pitch attitude that will maintain the recommended obstacle clearance airspeed or Vx, +10/-5 knots until clearing the obstacle or until the airplane is 50 feet above the surface.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S11", "Establish a pitch attitude for Vy and accelerate to Vy+10/-5 knots after clearing the obstacle or at 50 feet AGL if simulating an obstacle.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S12", "Configure the airplane in accordance with the manufacturer’s guidance after a positive rate of climb has been verified.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S13", "Maintain Vy +10/-5 knots to a safe maneuvering altitude.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S14", "Maintain directional control and proper wind-drift correction throughout takeoff and climb.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.E.S15", "Comply with noise abatement procedures.", in: task3, using: context)
        
        return task3
    }

    private static func loadShortLanding(using context: ModelContext, and aSection: TestSection) -> Task{
        let task2 = TaskFactory.createTask(using: 5, name: "Short-Field Approach and Landing", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with a short-field approach and landing with emphasis on proper use and coordination of flight controls.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.F.K1", "A stabilized approach, to include energy management concepts.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.F.K2", "Effects of atmospheric conditions, including wind, on approach and landing performance.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.F.K3", "Wind correction techniques on approach and landing.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R1", "Selection of runway based on pilot capability, airplane performance and limitations, available distance, and wind.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R2", "Effects of:", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R2a", "a. Crosswind", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R2b", "b. Windshear", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R2c", "c. Tailwind", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R2d", "d. Wake turbulence", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R2e", "e. Runway surface/condition", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R3", "Planning for:", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R3a", "a. Go-around and rejected landing", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R3b", "b. Land and hold short operations (LAHSO)", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R4", "Collision hazards, to include aircraft, terrain, obstacles, wires, vehicles, vessels, persons, and wildlife.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R5", "Low altitude maneuvering including stall, spin, or CFIT.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.F.R6", "Distractions, loss of situational awareness, incorrect airport surface approach and landing, or improper task management.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S1", "Complete the appropriate checklist.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S2", "Make radio calls as appropriate.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S3", "Ensure the airplane is aligned with the correct/assigned runway.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S4", "Scan runway and the adjoining area for traffic and obstructions.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S5", "Select and aim for a suitable touchdown point considering the wind, landing surface, and obstructions.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S6", "Establish the recommended approach and landing configuration and airspeed, and adjust pitch attitude and power as required to maintain a stabilized approach.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S7", "Maintain manufacturer’s published approach airspeed or in its absence not more than 1.3 VSO, +10/-5 knots with gust factor applied.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S8", "Maintain directional control and appropriate crosswind correction throughout the approach and landing.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S9", "Make smooth, timely, and correct control application during round out and touchdown.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S10", "Touch down at a proper pitch attitude within 200 feet beyond or on the specified point, threshold markings, or runway numbers, with no side drift, minimum float, and with the airplane’s longitudinal axis aligned with and over runway centerline.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S11", "Use manufacturer’s recommended procedures for airplane configuration and braking.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S12", "Execute a timely go-around if the approach cannot be made within the tolerances specified above or for any other condition that may result in an unsafe approach or landing.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.F.S13", "Utilize runway incursion avoidance procedures.", in: task2, using: context)
        
        return task2
    }
    
    private static func loadForwardSlip(using context: ModelContext, and aSection: TestSection) -> Task{
        let task2 = TaskFactory.createTask(using: 6, name: "Forward Slip to a Landing", reference: "FAA-H-8083-2, FAA-H-8083-3; POH/AFM; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with a normal approach and landing with emphasis on proper use of flight controls.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.M.K1", "Concepts of energy management during a forward slip approach.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.M.K2", "Effects of atmospheric conditions, including wind, on approach and landing performance.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.M.K3", "Wind correction techniques during forward slip.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.M.K4", "When and why a forward slip approach is used during an approach.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M..R1", "Selection of runway or approach path and touchdown area based on pilot capability, airplane performance and limitations, available distance, and wind.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R2", "Effects of:", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R2a", "a. Crosswind", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R2b", "b. Windshear", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R2c", "c. Tailwind", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R2d", "d. Wake turbulence", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R2e", "e. Runway surface/condition", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R3", "Planning for:", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R3a", "a. Go-around and rejected landing", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R3b", "b. Land and hold short operations (LAHSO)", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R4", "Collision hazards, to include aircraft, terrain, obstacles, wires, vehicles, vessels, persons, and wildlife.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R5", "Low altitude maneuvering including stall, spin, or CFIT.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R6", "Distractions, loss of situational awareness, incorrect airport surface approach and landing, or improper task management.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R6", "Forward slip operations, including fuel flowage, tail stalls with flaps, and lack of airspeed control.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R6", "Surface contact with the airplane’s longitudinal axis misaligned.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.M.R9", "Unstable approach.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.IV.M.S1", "Complete the appropriate checklist.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.M.S2", "Make radio calls as appropriate.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.M.S3", "Plan and follow a flightpath to the selected landing area considering altitude, wind, terrain, and obstructions.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.M.S4", "Select the most suitable touchdown point considering the wind, landing surface, and obstructions.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.M.S5", "Position airplane on downwind leg, parallel to landing runway.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.M.S6", "Configure the airplane correctly.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.M.S7", "As necessary, correlate crosswind with direction of forward slip and transition to sideslip before touchdown.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.M.S8", "Touch down at a proper pitch attitude, within 400 feet beyond or on the specified point, with no side drift, and with the airplane’s longitudinal axis aligned with and over the runway center/landing path.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.M.S9", "Maintain a ground track aligned with the runway center/landing path.", in: task2, using: context)
    
        return task2
    }

    private static func loadGoAround(using context: ModelContext, and aSection: TestSection) -> Task{
        let task2 = TaskFactory.createTask(using: 7, name: "Go-Around/Rejected Landing", reference: "FAA-H-8083-3, FAA-H-8083-23; POH/AFM; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with a go-around/rejected landing with emphasis on factors that contribute to landing conditions that may require a go-around.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.N.K1", "A stabilized approach, to include energy management concepts.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.N.K2", "Effects of atmospheric conditions, including wind, on approach and landing performance.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.IV.N.K3", "Wind correction techniques on takeoff/departure and approach/landing.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.IV.N.R1", "Delayed recognition of the need for a go-around/rejected landing.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.N.R2", "Delayed performance of a go-around at low altitude.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.N.R3", "Improper application of power.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.N.R4", "Improper airplane configuration.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.N.R5", "Collision hazards, to include aircraft, terrain, obstacles, wires, vehicles, vessels, persons, and wildlife.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.N.R6", "Low altitude maneuvering including stall, spin, or CFIT.", in: task2, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.IV.N.R7", "Distractions, loss of situational awareness, or improper task management.", in: task2, using: context)

        TaskFactory.createComponent(type: .skill, id: "PA.IV.N.S1", "Complete the appropriate checklist.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.N.S2", "Make radio calls as appropriate.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.N.S3", "Make a timely decision to discontinue the approach to landing.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.N.S4", "Apply takeoff power immediately and transition to climb pitch attitude for Vx or Vy as appropriate +10/-5 knots.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.N.S5", "Configure the airplane after a positive rate of climb has been verified or in accordance with airplane manufacturer’s instructions.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.N.S6", "Maneuver to the side of the runway/landing area when necessary to clear and avoid conflicting traffic.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.N.S7", "Maintain Vy +10/-5 knots to a safe maneuvering altitude.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.IV.N.S8", "Maintain directional control and proper wind-drift correction throughout the climb.", in: task2, using: context)
        
        return task2
    }
}
