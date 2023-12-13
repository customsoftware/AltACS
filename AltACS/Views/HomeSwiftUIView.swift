//
//  HomeSwiftUIView.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/13/23.
//

import SwiftUI

struct HomeSwiftUIView: View {
    var body: some View {
        TabView {
            WrittenExaminerSwiftUIView()
                .tabItem {
                    Label("Study", systemImage: "square.and.pencil")
                }
            
            ContentView()
                .tabItem {
                    Label("Review", systemImage: "list.dash")
                }

        }
    }
}

#Preview {
    HomeSwiftUIView()
}
