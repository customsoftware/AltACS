//
//  AltACSApp.swift
//  AltACS
//
//  Created by Kenneth Cluff on 12/11/23.
//

import SwiftUI
import SwiftData

@main
struct AltACSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: TestSection.self)
    }
}
