//
//  SkillTestItemSwiftUIView.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/12/23.
//

import SwiftUI
import SwiftData

struct SkillTestItemSwiftUIView: View {
    @Bindable var aSkill: TestComponent
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack(alignment: .leading) {
            TaskItemListSwiftUIView(aSkill: aSkill)
            Divider()
            Text("References:")
                .bold()
            TextField("References", text: $aSkill.reference, axis: .vertical)
                .multilineTextAlignment(.leading)
                .padding(.leading)
                .padding(.trailing)
            Divider()
            Toggle(isOn: $aSkill.isComplete, label: {
                Text("Skill Completed")
            })
            .bold()
            .padding(.trailing)
            Text("Comments:")
                .bold()
            TextField("Comment on skill", text: $aSkill.answer, axis: .vertical)
                .multilineTextAlignment(.leading)
                .padding(.leading)
                .padding(.trailing)
            
            Spacer()
        }
        .padding(.leading)
        .onDisappear(perform: {
            if aSkill.hasChanges {
                do {
                    try modelContext.save()
                } catch let error {
                    print("There was an error saving the data: \(error.localizedDescription)")
                }
            }
        })
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Task.self, configurations: config)
        
        let example = TestComponent(identifier: "Something", componentDescription: "Yeah this", answer: "", reference: "")
        return  SkillTestItemSwiftUIView(aSkill: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to create model container.")
    }
}
