//
//  WrittenExaminerSwiftUIView.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/13/23.
//

import SwiftUI
import SwiftData

struct WrittenExaminerSwiftUIView: View {
    @Query (sort: \TestComponent.id) var components: [TestComponent]
    @Environment(\.modelContext) var modelContext
    
    @State private var selectedItem: TestComponent?
    @State private var searchableText: String = ""
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(searchResults, id:\.self) { component in
                    NavigationLink {
                        TestItemSwiftUIView(aSkill: component)
                    } label: {
                        TaskItemListSwiftUIView(aSkill: component)
                    }
                }
            }
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
        .searchable(text: $searchableText, prompt: "Enter item ID from your written test.")
    }
    
    var searchResults: [TestComponent] {
        if searchableText.isEmpty {
            return components
        } else {
            return components.filter {
                $0.id.uppercased().contains(searchableText.uppercased())
            }
        }
    }
    
}

#Preview {
    WrittenExaminerSwiftUIView()
}
