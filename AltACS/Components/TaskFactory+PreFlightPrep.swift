//
//  TaskFactory+PreFlightPrep.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import Foundation
import SwiftData


// MARK: - This handles all the preflight preparation objects
extension TaskFactory {
    static func generatePreFlightPreparationTasks(for aSection: TestSection, in context: ModelContext) -> [Task] {
        var retValue = [Task]()
        let task1 = TaskFactory.createTask(using: 0, name: "Pilot Qualifications", reference: "14 CFR parts 61, 68, 91", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with airman and medical certificates including priviledges, limitations, currency, and operating as pilot-in-command (PIC) as a private pilot.", in: context, and: aSection)
        
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.A.K1", "Certification requirments", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.A.K2", "Priviledges and Limitations", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.A.K3", "Medical certificates: class, expiration, priviledges, temporary disqualifications", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.A.K4", "Documents required to exercise private pilot priviledges", in: task1, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.A.K5", "Part 68 BasicMed priviledges and limitations", in: task1, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.I.A.R1", "Failure to distinguish proficiency versus currency", in: task1, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.A.R2", "Flying unfamiliar airplances, or operating with unfamiliar flight display systems, and avionics.", in: task1, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.I.A.S1", "Apply requirements to act as PIC under Visual Flight Rules (VFR) in a scenarios given by the evaluator.", in: task1, using: context)
        
        retValue.append(task1)
        
        // --
        let task2 = TaskFactory.createTask(using: 1, name: "Airworthiness Requirments", reference: "14 CFR parts 39, 43, 91", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with airworthiness requirements, including airplane certificates.", in: context, and: aSection)
        /// Creaete components here
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K1", "General airworthiness requirements and compliance for airplanes, including:", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K1a", "a. Certificate location and expiration dates", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K1b", "b. Required inspections and airplane logbook documentation", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K1c", "c. Airworthiness Directives and Special Airworthiness Information Bulletins", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K1d", "d. Purpose and procedure for obtaining a special flight permit", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K2", "Pilot-performed preventive maintenance.", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K3", "Equipment requirements for day and night VFR flight, to include:", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K3a", "a. Flying with inoperative equipment", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K3b", "b. Using an approved Minimum Equipment List (MEL)", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K3c", "c. Kinds of Operation Equipment List (KOEL)", in: task2, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.B.K3d", "d. Required discrepancy records or placards", in: task2, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.I.B.R1", "Inoperative equipment discovered prior to flight.", in: task2, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.I.B.S1", "Locate and describe airplane airworthiness and registration information.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.B.S2", "Determine the airplane is airworthy in a scenario given by the evaluator.", in: task2, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.B.S3", "Apply appropriate procedures for operating with inoperative equipment in a scenario given by the evaluator.", in: task2, using: context)
        
        retValue.append(task2)
        
        // --
        let task3 = TaskFactory.createTask(using: 3, name: "Weather information", reference: "14 CFR parts 91", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with airworthiness requirements, including airplane certificates.", in: context, and: aSection)
        /// Creaete components here
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K1", "Sources of weather data (e.g., National Weather Service, Flight Service) for flight planning purposes.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K2", "Acceptable weather products and resources required for preflight planning, current and forecast weather for departure, en route, and arrival phases of flight.", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3", "Meteorology applicable to the departure, en route, alternate, and destination under VFR in Visual Meteorological Conditions (VMC) to include expected climate and hazardous conditions such as:", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3a", "a. Atmospheric composition and stability", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3b", "b. Wind (e.g., crosswind, tailwind, windshear, mountain wave, etc.)", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3c", "c. Temperature", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3d", "d. Moisture/precipitation", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3e", "e. Weather system formation, including air masses and fronts", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3f", "f. Clouds", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3g", "g. Turbulence", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3h", "h. Thunderstorms and microbursts", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3i", "i. Icing and freezing level information", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3j", "j. Fog/mist", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3k", "k. Frost", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K3l", "l. Obstructions to visibility (e.g., smoke, haze, volcanic ash, etc.)", in: task3, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.C.K4", "Flight deck displays of digital weather and aeronautical information.", in: task3, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.I.C.R1", "Factors involved in making the go/no-go and continue/divert decisions, to include:", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.C.R1a", "a. Circumstances that would make diversion prudent", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.C.R1b", "b. Personal weather minimums", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.C.R1c", "c. Hazardous weather conditions to include known or forecast icing or turbulence aloft", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.C.R2", "Limitations of:", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.C.R2a", "a. Onboard weather equipment", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.C.R2b", "b. Aviation weather reports and forecasts", in: task3, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.C.R2c", "c. Inflight weather resources", in: task3, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.I.C.S1", "Use available aviation weather resources to obtain an adequate weather briefing.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.C.S2", "Analyze the implications of at least three of the conditions listed in K3a through K3l above, using actual weather or weather conditions in a scenario provided by the evaluator.", in: task3, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.C.S3", "Correlate weather information to make a competent go/no-go decision.", in: task3, using: context)
        
        retValue.append(task3)
        
        // --
        let task4 = TaskFactory.createTask(using: 4, name: "Cross-Country Flight Planning", reference: "14 CFR parts 91, FAA-H-8083-2", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with cross-country flights and VFR flight planning.", in: context, and: aSection)
        /// Creaete components here
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.D.K1", "Route planning, including consideration of different classes and special use airspace (SUA) and selection of appropriate and available navigation/communication systems and facilities.", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.D.K2", "Altitude selection accounting for terrain and obstacles, glide distance of the airplane, VFR cruising altitudes, and the effect of wind.", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.D.K3", "Calculating:", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.D.K3a", "a. Time, climb and descent rates, course, distance, heading, true airspeed, and groundspeed", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.D.K3b", "b. Estimated time of arrival to include conversion to universal coordinated time (UTC)", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.D.K3c", "c. Fuel requirements, to include reserve", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.D.K4", "Elements of a VFR flight plan.", in: task4, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.D.K5", "Procedures for activating and closing a VFR flight plan.", in: task4, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.I.D.R1", "The applicant demonstrates the ability to identify, assess and mitigate risks, encompassing: Pilot.", in: task4, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.D.R2", "Aircraft.", in: task4, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.D.R3", "Environment (e.g., weather, airports, airspace, terrain, obstacles).", in: task4, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.D.R4", "External pressures.", in: task4, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.D.R5", "Limitations of air traffic control (ATC) services.", in: task4, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.D.R6", "Improper fuel planning.", in: task4, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.I.D.S1", "Prepare, present, and explain a cross-country flight plan assigned by the evaluator including a risk analysis based on real-time weather, to the first fuel stop.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.D.S2", "Apply pertinent information from appropriate and current aeronautical charts, Chart Supplements; NOTAMs relative to airport, runway and taxiway closures; and other flight publications.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.D.S3", "Create a navigation plan and simulate filing a VFR flight plan.", in: task4, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.D.S4", "Recalculate fuel reserves based on a scenario provided by the evaluator.", in: task4, using: context)
        
        retValue.append(task4)
        
        // --
        let task5 = TaskFactory.createTask(using: 5, name: "National Airspace System", reference: "14 CFR parts 39, 43, 91", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with the National Airspace System (NAS) operating under VFR as a private pilot.", in: context, and: aSection)
        /// Creaete components here
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.E.K1", "Types of airspace/airspace classes and associated requirements and limitations.", in: task5, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.E.K2", "Charting symbology.", in: task5, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.E.K3", "Special use airspace (SUA), special flight rules areas (SFRA), temporary flight restrictions (TFR), and other airspace areas.", in: task5, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.I.E.R1", "Various classes and types of airspace.", in: task5, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.I.E.S1", "Identify and comply with the requirements for basic VFR weather minimums and flying in particular classes of airspace.", in: task5, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.E.S2", "Correctly identify airspace and operate in accordance with associated communication and equipment requirements.", in: task5, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.E.S3", "Identify the requirements for operating in SUA or within a TFR. Identify and comply with SATR and SFRA operations, if applicable.", in: task5, using: context)
        
        retValue.append(task5)
        
        // --
        let task6 = TaskFactory.createTask(using: 6, name: "Performance and Limitations", reference: "FAA-H-8083-1, FAA-H-8083-2, FAA-H-8083-3", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with operating an airplane safelyh within the parameters of its performance capabilities and limitations.", in: context, and: aSection)
        /// Creaete components here
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.F.K1", "Elements related to performance and limitations by explaining the use of charts, tables, and data to determine performance.", in: task6, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.F.K2", "Factors affecting performance, to include:", in: task6, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.F.K2a", "a. Atmospheric conditions", in: task6, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.F.K2b", "b. Pilot technique", in: task6, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.F.K2c", "c. Airplane configuration", in: task6, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.F.K2d", "d. Airport environment", in: task6, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.F.K2e", "e. Loading (e.g., center of gravity)", in: task6, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.F.K2f", "f. Weight and balance", in: task6, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.F.K3", "Aerodynamics.", in: task6, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.I.F.R1", "Inaccurate use of manufacturer’s performance charts, tables, and data.", in: task6, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.F.R2", "Exceeding airplane limitations.", in: task6, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.F.R3", "Possible differences between calculated performance and actual performance.", in: task6, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.I.F.S1", "Compute the weight and balance, correct out-of-center of gravity (CG) loading errors and determine if the weight and balance remains within limits during all phases of flight.", in: task6, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.F.S2", "Utilize the appropriate airplane manufacturer’s approved performance charts, tables, and data.", in: task6, using: context)
        
        retValue.append(task6)
        
        // --
        let task7 = TaskFactory.createTask(using: 7, name: "Operation of Systems", reference: "FAA-H-8083-2, FAA-H-8083-3", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with the safe operation of systems on the airplane provided by the flight test.", in: context, and: aSection)
        /// Creaete components here
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1", "Airplane systems, to include: (at least 3 of the following)", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1a", "a. Primary flight controls", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1b", "b. Secondary flight controls", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1c", "c. Powerplant and propeller", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1d", "d. Landing gear", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1e", "e. Fuel, oil, and hydraulic", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1f", "f. Electrical", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1g", "g. Avionics", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1h", "h. Pitot-static, vacuum/pressure, and associated flight instruments", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1i", "i. Environmental", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1j", "j. Deicing and anti-icing", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1k", "k. Water rudders (ASES, AMES)", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K1l", "l. Oxygen system", in: task7, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.G.K2", "Indications of and procedures for managing system abnormalities or failures.", in: task7, using: context)
        
        TaskFactory.createComponent(type: .risk, id: "PA.I.G.R1", "Failure to detect system malfunctions or failures.", in: task7, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.G.R2", "Improper management of a system failure.", in: task7, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.G.R3", "Failure to monitor and manage automated systems.", in: task7, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.I.G.S1", "Operate at least three of the systems listed in K1a through K1l above appropriately.", in: task7, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.G.S2", "Use appropriate checklists properly.", in: task7, using: context)
        
        retValue.append(task7)
        
        // -- Human Factors
        let task8 = TaskFactory.createTask(using: 8, name: "Human Factors", reference: "FAA-H-8083-2, FAA-H-8083-25; AIM", objective: "To determine that the applicant exhibits satisfactory knowledge, risk management, and skills associated with personal health, flight physiology, aeromedical and human factors, as it relates to safety of flight.", in: context, and: aSection)
        /// Creaete components here
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1", "The symptoms (as applicable), recognition, causes, effects, and corrective actions associated with aeromedical and physiological issues including:", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1a", "a. Hypoxia", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1b", "b. Hyperventilation", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1c", "c. Middle ear and sinus problems", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1d", "d. Spatial disorientation", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1e", "e. Motion sickness", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1f", "f. Carbon monoxide poisoning", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1g", "g. Stress", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1h", "h. Fatigue", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1i", "i. Dehydration and nutrition", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1j", "j. Hypothermia", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1k", "k. Optical illusions", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K1l", "l. Dissolved nitrogen in the bloodstream after scuba dives", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K2", "Regulations regarding use of alcohol and drugs.", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K3", "Effects of alcohol, drugs, and over-the-counter medications.", in: task8, using: context)
        TaskFactory.createComponent(type: .knowledge, id: "PA.I.H.K4", "Aeronautical Decision-Making (ADM).", in: task8, using: context)
        
        
        TaskFactory.createComponent(type: .risk, id: "PA.I.H.R1", "Aeromedical and physiological issues.", in: task8, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.H.R2", "Hazardous attitudes.", in: task8, using: context)
        TaskFactory.createComponent(type: .risk, id: "PA.I.H.R3", "Distractions, loss of situational awareness, or improper task management.", in: task8, using: context)
        
        TaskFactory.createComponent(type: .skill, id: "PA.I.H.S1", "Associate the symptoms and effects for at least three of the conditions listed in K1a through K1l above with the cause(s) and corrective action(s).", in: task8, using: context)
        TaskFactory.createComponent(type: .skill, id: "PA.I.H.S2", "Perform self-assessment, including fitness for flight and personal minimums, for actual flight or a scenario given by the evaluator.", in: task8, using: context)
        
        retValue.append(task8)
        return retValue
    }
}
