//
//  Scoring.swift
//  Scoring
//
//  Created by Syd Polk on 6/23/23.
//

import SwiftUI
import SwiftData

@Model
final class Game {
    
    var datePlayed: Date
    var startTime: Date
    var gameNumber: Int
    var stadium: Stadium
    var sky: String?
    var gameTimeTemp: Int?
    var wind: String?
    var dayNight: String?
    var scoringMethod: String
    var scoringMediaOutlet: String?

    var useDH: Bool
    var homeTeamBatFirst: Bool

    var attendance: Int?
    var gameTime: String?
    
    var winningPitcher: Person?
    var losingPitcher: Person?
    var save: Person?
    var gameWinningRBI: Person?
    
    var umpireState: UmpireState
    
    // Visitors
    var visitingTeam: Team
    
    var vistingDefenese: Defense

    var visitingBattingOrder: [BattingOrderEntry]
    
    var visitingManager: Person?
    
    // Home
    
    var homeTeam: Team
    
    var homeDefense: Defense
    
    var homeBattingOrder: [BattingOrderEntry]
    
    var homeManager: Person?
    
    // Current State
    var state: GameState
    
    var visitingRunsScored: Int
    var visitingHits: Int
    var visitingErrors: Int
    
    var homeRunsScored: Int
    var homeHits: Int
    var homeErrors: Int
    
    var events: [Event]
    
    init(datePlayed: Date,
         gameNumber: Int = 1,
         homeTeamBatFirst: Bool = false,
         stadium: Stadium,
         useDH: Bool = true,
         startTime: Date,
         gameTime: String? = nil,
         sky: String? = nil,
         gameTimeTemp: Int? = nil,
         wind: String? = nil,
         dayNight: String? = nil,
         scoringMethod: String = "in park",
         scoringMediaOutlet: String? = nil,
         attendance: Int? = nil,
         winningPitcher: Person? = nil,
         losingPitcher: Person? = nil,
         save: Person? = nil,
         gameWinningRBI: Person? = nil,
         umpireState: UmpireState,
         visitingTeam: Team,
         vistingDefenese: Defense,
         visitingBattingOrder: [BattingOrderEntry],
         visitingManager: Person? = nil,
         homeTeam: Team,
         homeDefense: Defense,
         homeBattingOrder: [BattingOrderEntry],
         homeManager: Person? = nil,
         state: GameState,
         visitingRunsScored: Int = 0,
         visitingHits: Int = 0,
         visitingErrors: Int = 0,
         homeRunsScored: Int = 0,
         homeHits: Int = 0,
         homeErrors: Int = 0,
         events: [Event]) {
        self.datePlayed = datePlayed
        self.gameNumber = gameNumber
        self.homeTeamBatFirst = homeTeamBatFirst
        self.stadium = stadium
        self.useDH = useDH
        self.startTime = startTime
        self.gameTime = gameTime
        self.sky = sky
        self.gameTimeTemp = gameTimeTemp
        self.wind = wind
        self.dayNight = dayNight
        self.scoringMethod = scoringMethod
        self.scoringMediaOutlet = scoringMediaOutlet
        self.attendance = attendance
        self.winningPitcher = winningPitcher
        self.losingPitcher = losingPitcher
        self.save = save
        self.gameWinningRBI = gameWinningRBI
        self.umpireState = umpireState
        self.visitingTeam = visitingTeam
        self.vistingDefenese = vistingDefenese
        self.visitingBattingOrder = visitingBattingOrder
        self.visitingManager = visitingManager
        self.homeTeam = homeTeam
        self.homeDefense = homeDefense
        self.homeBattingOrder = homeBattingOrder
        self.homeManager = homeManager
        self.state = state
        self.visitingRunsScored = visitingRunsScored
        self.visitingHits = visitingHits
        self.visitingErrors = visitingErrors
        self.homeRunsScored = homeRunsScored
        self.homeHits = homeHits
        self.homeErrors = homeErrors
        self.events = events
    }
}
