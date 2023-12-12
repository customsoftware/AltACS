//
//  ContentView.swift
//  ACS
//
//  Created by Kenneth Cluff on 12/8/23.
//

import SwiftUI
import SwiftData



struct ContentView: View {
    @Query (sort: \TestSection.sequence) var sections: [TestSection]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(sections) { section in
                    NavigationLink(section.section) {
                        SectionsSwiftUIView(owningSection: section)
                            .navigationTitle(section.section)
                    }
                }
            }
            .navigationTitle("ACS Test")
            .onAppear(perform: {
                if sections.count == 0 {
                    addSection()
                }
            })
        }
    }
    
    func addSection() {
        // Test sections
        let preflightPrep = TestSection(section: "Pre-flight Preparation", sequence: 0)
        let preflightProc = TestSection(section: "Pre-flight Procedures", sequence: 1)
        let airportProceedures = TestSection(section: "Airport Base Operations", sequence: 2)
        let takeOffLanding = TestSection(section: "Take-off, Landings, Go-Around", sequence: 3)
        let performance = TestSection(section: "Performance And Ground Reference", sequence: 4)
        let navigation = TestSection(section: "Navigation", sequence: 5)
        let slowflight = TestSection(section: "Slow-flight And Stalls", sequence: 6)
        let instruments = TestSection(section: "Basic Instrument Maneuvers", sequence: 7)
        let emergencies = TestSection(section: "Emergency Operations", sequence: 8)
        let nightOps = TestSection(section: "Night Operations", sequence: 9)
        let postflight = TestSection(section: "Post-Flight Procedures", sequence: 10)
        
        modelContext.insert(preflightPrep)
        modelContext.insert(preflightProc)
        modelContext.insert(airportProceedures)
        modelContext.insert(takeOffLanding)
        modelContext.insert(performance)
        modelContext.insert(navigation)
        modelContext.insert(slowflight)
        modelContext.insert(instruments)
        modelContext.insert(emergencies)
        modelContext.insert(nightOps)
        modelContext.insert(postflight)
    }
}

#Preview {
    ContentView()
}
