//
//  GameState.swift
//  Scoring
//
//  Created by Syd Polk on 6/23/23.
//

import Foundation
import SwiftData

@Model
final class GameState {
    @Attribute(.unique) var id: UUID
    var timeStamp: Date?
    
    var game: Game
    
    var inning: Int
    var topBottom: String
    var outs: Int
    var balls: Int
    var strikes: Int
    
    var pitcher: Person
    var catcher: Person
    var firstBaseman: Person
    var secondBaseman: Person
    var thirdBaseman: Person
    var shortStop: Person
    var leftFielder: Person
    var centerFielder: Person
    var rightFielder: Person

    var pitcherHandedness: String?
    
    var manOnFirst: Person?
    var manOnFirstPositionCode: String?
    var manOnSecond: Person?
    var manOnSecondPositionCode: String?
    var manOnThird: Person?
    var manOnThirdPositionCode: String?
    
    var battingOrderNumber: Int
    var batter: Person
    var batterHandedness: String?
    var batterPositionCode: String
    
    var umpHome: Person
    var umpFirstBase: Person?
    var umpSecondBase: Person?
    var umpThirdBase: Person?
    var umpLeftField: Person?
    var umpRightField: Person?

    var stadium: Stadium

    init (game: Game,
          inning: Int,
          topBottom: String,
          outs: Int,
          balls: Int,
          strikes: Int,
          pitcher: Person,
          pitcherHandedness: String?,
          catcher: Person,
          firstBawseman: Person,
          secondBaseman: Person,
          thirdBaseman: Person,
          shortStop: Person,
          leftFielder: Person,
          centerFielder: Person,
          rightFielder: Person,
          battingOrderNumber: Int,
          batter: Person,
          batterHandedness: String? = nil,
          batterPositionCode: String,
          manOnFirst: Person? = nil,
          manOnFirstPositionCode: String,
          manOnSecond: Person? = nil,
          manOnSecondPositionCode: String? = nil,
          manOnThird: Person? = nil,
          manOnThirdPositionCode: String? = nil,
          umpHome: Person,
          umpFirstBase: Person? = nil,
          umpSecondBase: Person? = nil,
          umpThirdBase: Person? = nil,
          umpLeftField: Person? = nil,
          umpRightField: Person? = nil,
          timeStamp: Date? = nil,
          stadium: Stadium
        ) {
        self.id = UUID()
        self.inning = inning
        self.topBottom = topBottom
        self.outs = outs
        self.balls = balls
        self.strikes = strikes
        self.pitcher = pitcher
        self.pitcherHandedness = pitcherHandedness
        self.catcher = catcher
        self.firstBaseman = firstBawseman
        self.secondBaseman = secondBaseman
        self.thirdBaseman = thirdBaseman
        self.shortStop = shortStop
        self.leftFielder = leftFielder
        self.centerFielder = centerFielder
        self.rightFielder = rightFielder
        self.battingOrderNumber = battingOrderNumber
        self.batter = batter
        self.batterHandedness = batterHandedness
        self.manOnFirst = manOnFirst
        self.manOnFirstPositionCode = manOnFirstPositionCode
        self.manOnSecond = manOnSecond
        self.manOnSecondPositionCode = manOnSecondPositionCode
        self.manOnThird = manOnThird
        self.manOnThirdPositionCode = manOnThirdPositionCode
        self.umpHome = umpHome
        self.umpFirstBase = umpFirstBase
        self.umpSecondBase = umpSecondBase
        self.umpThirdBase = umpThirdBase
        self.umpLeftField = umpLeftField
        self.umpRightField = umpRightField
        self.timeStamp = timeStamp
        self.stadium = stadium
    }
}

