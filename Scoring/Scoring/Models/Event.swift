//
//  Play.swift
//  Scoring
//
//  Created by Syd Polk on 6/23/23.
//

import SwiftUI
import SwiftData

@Model
final class Event {
    @Attribute(.unique) var id: UUID
    
    var stateStart: GameState
    var stateEnd: GameState
    var runsScored: Int
    var leftOnBase: Int
    var eventDescription: String
    var timeStamp: Date?
    
    init(stateStart: GameState,
         stateEnd: GameState,
         runScored: Int,
         leftOnBase: Int,
         eventDescription: String,
         timeStamp: Date? = nil) {
        self.id = UUID()
        self.stateStart = stateStart
        self.stateEnd = stateEnd
        self.runsScored = runsScored
        self.leftOnBase = leftOnBase
        self.timeStamp = timeStamp
    }
}
