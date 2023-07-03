//
//  GameWizard.swift
//  Scoring
//
//  Created by Syd Polk on 7/2/23.
//

import SwiftUI
import SwiftData

struct GameWizard: View {
    @Environment(\.modelContext) private var modelContext

    @Binding var gameWizardCompleted: Bool
    @Binding var newGame: Game?
    
    @State private var gameDate = Date()
    @State private var gameStartTime = Date()
    @State private var gameNumber = 1
    @State private var homeTeamBatsFirst = false
    @State private var usesDH = true
    
    @State private var stadium: Stadium? = nil
    
    var body: some View {
        TabView {
            BasicGameData(
                gameDate: $gameDate,
                gameStartTime: $gameStartTime,
                gameNumber: $gameNumber,
                homeTeamBatsFirst: $homeTeamBatsFirst,
                usesDH: $usesDH)
            VStack {
                Text("Stadium Info")
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    @State var show: Bool = true
    @State var newGame: Game? = nil
    
    return GameWizard(gameWizardCompleted: $show, newGame: $newGame)
}
