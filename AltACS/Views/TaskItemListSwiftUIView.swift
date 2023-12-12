//
//  TaskItemListSwiftUIView.swift
//  ACS
//
//  Created by Kenneth Cluff on 12/9/23.
//

import SwiftUI
import SwiftData

struct TaskItemListSwiftUIView: View {
    @Bindable var aSkill: TestComponent
    
    var body: some View {
        HStack(alignment: .top) {
            Text(aSkill.id)
                .bold()
            Text(aSkill.componentDescription)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Task.self, configurations: config)
        
        let example = TestComponent(type: .knowledge, identifier: "Something", componentDescription: "Yeah this", answer: "", reference: "")
        return  TaskItemListSwiftUIView(aSkill: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to create model container.")
    }
}
