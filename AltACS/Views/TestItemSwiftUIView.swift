//
//  TestItemSwiftUIView.swift
//  ACS
//
//  Created by Kenneth Cluff on 12/9/23.
//

import SwiftUI
import SwiftData

struct TestItemSwiftUIView: View {
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
            Text("Answer:")
                .bold()
            TextField("Answer", text: $aSkill.answer, axis: .vertical)
                .multilineTextAlignment(.leading)
                .padding(.leading)
                .padding(.trailing)
                .autocorrectionDisabled()
            Spacer()
        }
        .padding(.leading)
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Task.self, configurations: config)
        
        let example = TestComponent(identifier: "Something", componentDescription: "Yeah this", answer: "", reference: "")
        return  TestItemSwiftUIView(aSkill: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to create model container.")
    }
}
