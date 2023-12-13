//
//  TaskItemSwiftUIView.swift
//  ACS
//
//  Created by Kenneth Cluff on 12/9/23.
//

import SwiftUI
import SwiftData


// This lists the task items for the selected Task (Task > Section > TaskItem )
struct TaskItemSwiftUIView: View {
    @Environment(\.modelContext) var modelContext
    @Bindable var owningTask: Task
    
    @State private var selectedItem: TestComponent?
    @State private var idString: String = ""
    @State private var itemDescription: String = ""
    @State private var showNavigationBar: Bool = true
    
    var body: some View {
        NavigationSplitView {
            VStack(alignment: .leading) {
                Section {
                    Text(owningTask.name)
                        .font(.title)
                        .padding(.trailing)
                    
                    Text("References")
                        .bold()
                    TextField("References", text: $owningTask.reference, axis: .vertical)
                        .multilineTextAlignment(.leading)
                        .textFieldStyle(.roundedBorder)
                        .padding(.leading)
                    Text("Objective")
                        .bold()
                    Text(owningTask.objective)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                        .font(.caption)
                }
                List () {
                    Section ("Knowledge") {
                        ForEach(owningTask.knowledge!.filter({ aTestComponent in
                            aTestComponent.type == .knowledge
                        }).sorted(by: { t1, t2 in
                            t1.id < t2.id
                        }) ) { aKnowledge in
                            NavigationLink {
                                TestItemSwiftUIView(aSkill: aKnowledge)
                            } label: {
                                TaskItemListSwiftUIView(aSkill: aKnowledge)
                            }
                        }
                    }
                    
                    Section ("Risk Management") {
                        ForEach(owningTask.risk!.filter({ aTestComponent in
                            aTestComponent.type == .risk
                        }).sorted(by: { t1, t2 in
                            t1.id < t2.id
                        })) { aRisk in
                            NavigationLink {
                                TestItemSwiftUIView(aSkill: aRisk)
                            } label: {
                                TaskItemListSwiftUIView(aSkill: aRisk)
                            }
                        }
                    }
                    
                    Section ("Skill") {
                        ForEach(owningTask.skills!.filter({ aTestComponent in
                            aTestComponent.type == .skill
                        }).sorted(by: { t1, t2 in
                            t1.id < t2.id
                        })) { aSkill in
                            NavigationLink {
                                SkillTestItemSwiftUIView(aSkill: aSkill)
                            } label: {
                                TaskItemListSwiftUIView(aSkill: aSkill)
                            }
                        }
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
            }
            .toolbar(showNavigationBar ? .visible : .hidden)
            .padding()
        } detail: {
            if let item = selectedItem {
                NavigationLink(value: selectedItem) {
                    if selectedItem?.type == .skill {
                        SkillTestItemSwiftUIView(aSkill: item)
                    } else {
                        TestItemSwiftUIView(aSkill: item)
                    }
                }
            } else {
                Text("Choose an test item from the list")
            }
        }
        .navigationSplitViewStyle(.balanced)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Task.self, configurations: config)
        
        let example = Task(sequence: 0, name: "Demo", reference: "Demo reference")
        return  TaskItemSwiftUIView(owningTask: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to create model container.")
    }
}
