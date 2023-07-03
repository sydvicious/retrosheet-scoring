//
//  BasicGameData.swift
//  Scoring
//
//  Created by Syd Polk on 7/2/23.
//

import SwiftUI

struct BasicGameData: View {
    @Binding var gameDate: Date
    @Binding var gameStartTime: Date
    @Binding var gameNumber: Int
    @Binding var homeTeamBatsFirst: Bool
    @Binding var usesDH: Bool
    
    var body: some View {
        VStack {
            VStack {
                Text("Game Date")
                DatePicker(
                    "Game Date",
                    selection: $gameDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)
            }
            DatePicker(
                "StartTime",
                selection: $gameStartTime,
                displayedComponents: .hourAndMinute)
            HStack {
                Text("Game Number")
                Spacer()
                Picker(
                    "Game Number",
                    selection: $gameNumber) {
                        Text("1").tag(1)
                        Text("2").tag(2)
                    }
                    .pickerStyle(.automatic)
            }
            Toggle("Home Team Bats First", isOn: $homeTeamBatsFirst)
            Toggle("Uses DH", isOn: $usesDH)
        }
    }
}

#Preview {
    @State var gameDate: Date = Date()
    @State var gameStartTime: Date = Date()
    @State var gameStartTimeMinutes: Int = 5
    @State var gameNumber: Int = 1
    @State var homeTeamBatsFirst: Bool = false
    @State var usesDH: Bool = true
    
    return BasicGameData(
        gameDate: $gameDate,
        gameStartTime: $gameStartTime,
        gameNumber: $gameNumber,
        homeTeamBatsFirst: $homeTeamBatsFirst,
        usesDH: $usesDH
    )
}
