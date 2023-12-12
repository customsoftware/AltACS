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
//        .toolbar {
//            Button("Add Task") {
//                self.isShowingPopover = true
//            }
//            .popover(isPresented: self.$isShowingPopover, arrowEdge: .top) {
//                TextField("Task Name", text: $taskName)
//                    .padding()
//                TextField("Resource", text: $taskResource)
//                    .padding()
//                TextField("Objective", text: $taskObjective, axis: .vertical)
//                    .multilineTextAlignment(.leading)
//                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                Divider()
//                Button("Save", action: saveData)
//                    .padding()
//                Button("Cancel", action: cancelPopover)
//            }
//        }
        .onAppear(perform: {
            guard owningSection.tasks.count == 0 else { return }
            owningSection.tasks = TaskFactory.generateTasks(for: owningSection, in: modelContext)
        })
    }
    
    private func cancelPopover() {
        isShowingPopover = false
        taskName = ""
        taskResource = ""
        taskObjective = ""
    }
    
    private func saveData() {
        let newTask = Task(sequence: owningSection.tasks.count, name: taskName, reference: taskResource, objective: taskObjective)
        owningSection.tasks.append(newTask)
        newTask.owningSection = owningSection
        modelContext.insert(newTask)
        
        cancelPopover()
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
