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
            Text("Skill Status:")
                .bold()
            
            Toggle(isOn: $aSkill.isComplete, label: {
                Text("Skill Completed")
            })
            .padding(.trailing)
    
            Spacer()
        }
        .padding(.leading)
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Task.self, configurations: config)
        
        let example = TestComponent(state: .notTested, type: .knowledge, identifier: "Something", componentDescription: "Yeah this", answer: "", reference: "")
        return  SkillTestItemSwiftUIView(aSkill: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to create model container.")
    }
}
