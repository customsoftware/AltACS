//
//  TaskFactory+Navigation.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData


// MARK: - This handles all the go navigation
extension TaskFactory {
    static func generateNavigation(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        
        // -- Pilotage and Dead Reckoning
        retValue.append(loadPilotage(using: context, and: aSection))
        
        // -- Navigation Systems and Radar Services
        retValue.append(loadRadar(using: context, and: aSection))
        
        // -- Diversion
        retValue.append(loadDiversion(using: context, and: aSection))
        
        // -- Lost Procedures
        retValue.append(loadLost(using: context, and: aSection))
        
        return retValue
    }
    
    private static func loadPilotage(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 0, name: "Pilotage and Dead Reckoning", reference: "14 CFR part 61; FAA-H-8083-2, FAA-H-8083-25; Navigation Charts", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with pilotage and dead reckoning.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K1", "Pilotage and dead reckoning.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K2", "Magnetic compass errors.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K3", "Topography.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K4", "Selection of appropriate:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K4a", "a. Route", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K4b", "b. Altitude(s)", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K4c", "c. Checkpoints", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K5", "Plotting a course, to include:", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K5a", "a. Determining heading, speed, and course", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K5b", "b. Wind correction angle", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K5c", "c. Estimating time, speed, and distance", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K5d", "d. True airspeed and density altitude", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K6", "Power setting selection.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.A.K7", "Planned versus actual flight plan calculations and required corrections.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VI.A.R1", "The applicant demonstrates the ability to identify, assess and mitigate risks, encompassing: Pilot.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.A.R2", "The applicant demonstrates the ability to identify, assess and mitigate risks, encompassing: Pilot.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VI.A.S1", "Prepare and use a flight log.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.A.S2", "Navigate by pilotage.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.A.S3", "Navigate by means of pre-computed headings, groundspeeds, and elapsed time.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.A.S4", "Use the magnetic direction indicator in navigation, to include turns to headings.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.A.S5", "Verify position within three nautical miles of the flight-planned route.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.A.S6", "Arrive at the en route checkpoints within five minutes of the initial or revised estimated time of arrival (ETA) and provide a destination estimate.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.A.S7", "Maintain the appropriate altitude ±200 feet and heading ±15°.", in: task1, using: context)
        
        return task1
    }
    
    private static func loadRadar(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 1, name: "Navigation Systems and Radar Services", reference: "FAA-H-8083-2, FAA-H-8083-3, FAA-H-8083-6, FAA-H-8083-25; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with navigation systems and radar services.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.B.K1", "Ground-based navigation (orientation, course determination, equipment, tests, and regulations).", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.B.K2", "Satellite-based navigation (e.g., equipment, regulations, database considerations, and limitations of satellite navigation).", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.B.K3", "Radar assistance to VFR aircraft (e.g., operations, equipment, available services, traffic advisories).", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.B.K4", "Transponder (Mode(s) A, C, and S).", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VI.B.R1", "Failure to manage automated navigation and autoflight systems.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.B.R2", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.B.R3", "Limitations of the navigation system in use.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.B.R4", "Loss of a navigation signal.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VI.B.S1", "Use an airborne electronic navigation system.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.B.S2", "Determine the airplane’s position using the navigation system.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.B.S3", "Intercept and track a given course, radial, or bearing, as appropriate.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.B.S4", "Recognize and describe the indication of station or waypoint passage, if appropriate.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.B.S5", "Recognize signal loss or interference and take appropriate action, if applicable.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.B.S6", "Use proper communication procedures when utilizing radar services.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.B.S7", "Maintain the appropriate altitude ±200 feet and heading ±15°.", in: task1, using: context)
        
        return task1
    }

    private static func loadDiversion(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 2, name: "Diversion", reference: "FAA-H-8083-2, FAA-H-8083-25; AIM; Navigation Charts", objective: "TTo determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with diversion.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.C.K1", "Selecting an alternate destination.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.C.K2", "Situations that require deviations from flight plan or ATC instructions.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VI.C.R1", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.C.R2", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.C.R3", "Failure to make a timely decision to divert.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.C.R4", "Failure to select an appropriate airport.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.C.R5", "Failure to utilize all available resources (e.g., automation, ATC, and flight deck planning aids).", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.VI.C.S1", "Select a suitable destination and route for diversion.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.C.S2", "Make a reasonable estimate of heading, groundspeed, arrival time, and fuel consumption to the divert airport.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.C.S3", "Maintain the appropriate altitude ±200 feet and heading ±15°.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.C.S4", "Update/interpret weather in flight.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.C.S5", "Utilize flight deck displays of digital weather and aeronautical information, as applicable.", in: task1, using: context)
        
        return task1
    }

    private static func loadLost(using context: ModelContext, and aSection: TestSection) -> Task {
        let task1 = TaskFactory.createTask(using: 3, name: "Lost Procedures", reference: "FAA-H-8083-2, FAA-H-8083-25; AIM; Navigation Charts", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with lost procedures and taking appropriate steps to achieve a satisfactory outcome if lost", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.D.K1", "Methods to determine position.", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.VI.D.K2", "Assistance available if lost (e.g., radar services, communication procedures).", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.VI.D.R1", "Collision hazards, to include aircraft, terrain, obstacles, and wires.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.D.R2", "Distractions, loss of situational awareness, or improper task management.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.D.R3", "Failure to record times over waypoints.", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.VI.D.R4", "Failure to seek assistance or declare an emergency in a deteriorating situation.", in: task1, using: context)
       
        TaskFactory.createComponent(type: .skill, id: "PA.VI.D.S1", "Use an appropriate method to determine position.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.D.S2", "Maintain an appropriate heading and climb as necessary.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.D.S3", "Identify prominent landmarks.", in: task1, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.VI.D.S4", "Use navigation systems/facilities or contact an ATC facility for assistance.", in: task1, using: context)
        
        return task1
    }

}
