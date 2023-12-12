//
//  SectionsSwiftUIView.swift
//  ACS
//
//  Created by Kenneth Cluff on 12/8/23.
//

import SwiftUI
import SwiftData

struct SectionsSwiftUIView: View {
    @Environment(\.modelContext) var modelContext
    @State private var isShowingPopover: Bool = false
    @Bindable var owningSection: TestSection
    
    @State private var taskName: String = ""
    @State private var taskResource: String = ""
    @State private var taskObjective: String = ""
    
    
    var body: some View {
        List {
            ForEach(owningSection.tasks.sorted(by: { t1, t2 in
                t1.sequence < t2.sequence
            })) { task in
                NavigationLink(task.name) {
                    TaskItemSwiftUIView(owningTask: task)
                }
            }
        }
        .onDisappear(perform: {
            print("we're going away")
        })
        .onAppear(perform: {
            guard owningSection.tasks.count == 0 else { return }
            owningSection.tasks = TaskFactory.generateTasks(for: owningSection, in: modelContext)
        })
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: TestSection.self, configurations: config)
        
        let example = TestSection(section: "Try Me", sequence: 0)
        return SectionsSwiftUIView(owningSection: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to create model container.")
    }
}
