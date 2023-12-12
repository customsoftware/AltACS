//
//  TaskItemSwiftUIView.swift
//  ACS
//
//  Created by Kenneth Cluff on 12/9/23.
//

import SwiftUI
import SwiftData

struct TaskItemSwiftUIView: View {
    @Environment(\.modelContext) var modelContext
    
    @Bindable var owningTask: Task
    @State private var showingNewActionSheet: Bool = false
    @State private var isShowingKnowledgePopover: Bool = false
    @State private var isShowingRiskPopover: Bool = false
    @State private var isShowingSkillPopover: Bool = false
    
    @State private var idString: String = ""
    @State private var itemDescription: String = ""
    
    var body: some View {
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
            List {
                Section ("Knowledge") {
                    ForEach(owningTask.knowledge!.filter({ aComponent in
                        aComponent.type == .knowledge
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
                    ForEach(owningTask.risk!.filter({ aComponent in
                        aComponent.type == .risk
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
                    ForEach(owningTask.skills!.filter({ aComponent in
                        aComponent.type == .skill
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
        .padding()
        .onAppear {
            // Hmmm
        }
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
