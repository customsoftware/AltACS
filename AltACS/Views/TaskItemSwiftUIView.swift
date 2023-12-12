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
                    ForEach(owningTask.knowledge.sorted(by: { t1, t2 in
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
                    ForEach(owningTask.risk.sorted(by: { t1, t2 in
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
                    ForEach(owningTask.skills.sorted(by: { t1, t2 in
                        t1.id < t2.id
                    })) { aSkill in
                        NavigationLink {
                            TestItemSwiftUIView(aSkill: aSkill)
                        } label: {
                            TaskItemListSwiftUIView(aSkill: aSkill)
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        
        .toolbar(content: {
            Button("Add Item") {
                showingNewActionSheet = true
            }
        })
        .popover(isPresented: self.$isShowingKnowledgePopover, arrowEdge: .top) {
            Text("New Knowledge Item")
                .bold()
                .padding()
            TextField("Test ID", text: $idString)
                .padding()
            TextField("Description", text: $itemDescription, axis: .vertical)
                .multilineTextAlignment(.leading)
                .textFieldStyle(.roundedBorder)
                .padding()
            Divider()
            Button("Save", action: addNewKnowledge)
                .padding()
            Button("Cancel", action: cancelPopover)
        }
        .popover(isPresented: self.$isShowingRiskPopover, arrowEdge: .top) {
            Text("New Risk Item")
                .bold()
                .padding()
            TextField("Test ID", text: $idString)
                .padding()
            TextField("Description", text: $itemDescription, axis: .vertical)
                .multilineTextAlignment(.leading)
                .textFieldStyle(.roundedBorder)
                .padding()
            Divider()
            Button("Save", action: addNewRisk)
                .padding()
            Button("Cancel", action: cancelPopover)
        }
        .popover(isPresented: self.$isShowingSkillPopover, arrowEdge: .top) {
            Text("New Skill Item")
                .bold()
                .padding()
            TextField("Test ID", text: $idString)
                .padding()
            TextField("Description", text: $itemDescription, axis: .vertical)
                .multilineTextAlignment(.leading)
                .textFieldStyle(.roundedBorder)
                .padding()
            Divider()
            Button("Save", action: addNewSkill)
                .padding()
            Button("Cancel", action: cancelPopover)
        }
        .confirmationDialog("Choose Type", isPresented: $showingNewActionSheet, actions: {
            Button("Knowlege Item") {
                isShowingKnowledgePopover = true
            }
            Button("Risk Item") {
                isShowingRiskPopover = true
            }
            Button("Skill Item") {
                isShowingSkillPopover = true
            }
        })
        .padding()
    }
    
    private func cancelPopover() {
        isShowingSkillPopover = false
        isShowingRiskPopover = false
        isShowingKnowledgePopover = false
        idString = ""
        itemDescription = ""
    }
    
    private func addNewKnowledge() {
        let newKnowledgeItem = TestComponent(state: .notTested, type: .knowledge, identifier: idString, componentDescription: itemDescription, answer: "", reference: "")
        owningTask.knowledge.append(newKnowledgeItem)
        newKnowledgeItem.owningTask = owningTask
        
        modelContext.insert(newKnowledgeItem)
        cancelPopover()
    }
    
    private func addNewRisk() {
        let newRiskItem = TestComponent(state: .notTested, type: .risk, identifier: idString, componentDescription: itemDescription, answer: "", reference: "")
        owningTask.risk.append(newRiskItem)
        newRiskItem.owningTask = owningTask
        
        modelContext.insert(newRiskItem)
        cancelPopover()
    }
    
    private func addNewSkill() {
        let newSkillItem = TestComponent(state: .notTested, type: .skill, identifier: idString, componentDescription: itemDescription, answer: "", reference: "")
        owningTask.skills.append(newSkillItem)
        newSkillItem.owningTask = owningTask
        
        modelContext.insert(newSkillItem)
        cancelPopover()
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
