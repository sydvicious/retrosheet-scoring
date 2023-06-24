//
//  ScoringApp.swift
//  Scoring
//
//  Created by Syd Polk on 6/22/23.
//

import SwiftUI
import SwiftData

@main
struct ScoringApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Game.self)
    }
}
