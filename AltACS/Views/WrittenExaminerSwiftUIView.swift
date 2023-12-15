//
//  WrittenExaminerSwiftUIView.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/13/23.
//

import SwiftUI
import SwiftData

struct WrittenExaminerSwiftUIView: View {
    private let hiValKey = "kHighValueItems"
    
    @Query (sort: \TestComponent.id) var components: [TestComponent]
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismissSearch) var dismissSearch
    
    @State private var selectedItem: TestComponent?
    @State private var searchableText: String = ""
    @State private var isShowingSheet: Bool = false
    @State private var requestedCode: String = ""
    @State private var searchedList: [String] = []
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(searchedList, id:\.self) { aCode in
                    Button(aCode.uppercased()) {
                        searchableText = aCode.uppercased()
                    }
                }
            }
            .frame(height: 175)
            .onAppear(perform: {
                searchedList = fetchHighValueFromDefaults()
            })
            .onDisappear(perform: {
                saveHighValueToDefalts()
            })
            Divider()
            List {
                ForEach(searchResults, id:\.self) { component in
                    NavigationLink {
                        TestItemSwiftUIView(aSkill: component)
                    } label: {
                        TaskItemListSwiftUIView(aSkill: component)
                    }
                }
            }
            .toolbar(content: {
                Button {
                    isShowingSheet = true
                } label: {
                    Text("Add")
                }
            })
            .alert("Enter Code", isPresented: $isShowingSheet) {
                TextField("Enter your code", text: $requestedCode)
                Button("OK", action: submit)
            }
            Spacer()
        } detail: {
            if let item = selectedItem {
                NavigationLink(value: selectedItem) {
                    if selectedItem?.typeEquivalent() == .skill {
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
    
    private func fetchHighValueFromDefaults() -> [String] {
        var retValue: [String] = []
        
        guard let stored =  UserDefaults.standard.object(forKey: hiValKey) as? [String] else {
            
            retValue = [
                "PA.I.C.K3c",
                "PA.I.C.K3f",
                "PA.I.C.K3j",
                "PA.I.E.K1",
                "PA.I.E.K2",
                "PA.I.F.K1",
                "PA.I.F.R2",
                "PA.I.G.K1c",
                "PA.I.G.K1h",
                "PA.II.D.R1",
                "PA.III.B.K2",
                "PA.VI.B.K1",
                "PA.VI.B.K4"
            ]
            
            return retValue
        }
        
        retValue = stored
        return retValue
    }
    
    private func saveHighValueToDefalts() {
        UserDefaults.standard.setValue(searchedList, forKey: hiValKey)
    }
    
    private func submit() {
        isShowingSheet = false
        if !searchedList.contains(requestedCode) {
            searchedList.append(requestedCode)
        }
        searchableText = requestedCode
        requestedCode = ""
    }
    
    
    private var searchResults: [TestComponent] {
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
