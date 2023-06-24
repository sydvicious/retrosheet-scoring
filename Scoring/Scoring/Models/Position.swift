//
//  Position.swift
//  Scoring
//
//  Created by Syd Polk on 6/23/23.
//

import Foundation

struct PositionIdentifier: Codable {
    let abbreviation: String
    let retroCharacter: String
    
    init(abbreviation: String, retroCharacter: String) {
        self.abbreviation = abbreviation
        self.retroCharacter = retroCharacter
    }
}

enum Positions: String {
    case pitcher = "Pitcher"
    case catcher = "Catcher"
    case firstBase = "First Base"
    case secondBase = "Second Base"
    case thirdBase = "Third Base"
    case shortStop = "Short Stop"
    case leftField = "Left Field"
    case centerField = "Center Field"
    case rightField = "Right Field"
    case designatedHitter = "Designated Hitter"
    case pinchHitter = "Pinch Hitter"
    case pinchRunner = "Pinch Runner"
}

class PositionData {
    static var pitcher: [Positions:PositionIdentifier] = [.pitcher:PositionIdentifier(abbreviation: "P", retroCharacter: "1")]
    static var catcher: [Positions:PositionIdentifier] = [.catcher:PositionIdentifier(abbreviation: "C", retroCharacter: "2")]
    static var firstBase: [Positions:PositionIdentifier] = [.firstBase:PositionIdentifier(abbreviation: "1B", retroCharacter: "3")]
    static var secondBase: [Positions:PositionIdentifier] = [.secondBase:PositionIdentifier(abbreviation: "2B", retroCharacter: "4")]
    static var thirdBase: [Positions:PositionIdentifier] = [.thirdBase:PositionIdentifier(abbreviation: "3B", retroCharacter: "5")]
    static var shortStop: [Positions:PositionIdentifier] = [.shortStop:PositionIdentifier(abbreviation: "SS", retroCharacter: "6")]
    static var leftField: [Positions:PositionIdentifier] = [.leftField:PositionIdentifier(abbreviation: "LF", retroCharacter: "7")]
    static var centerField: [Positions:PositionIdentifier] = [.centerField:PositionIdentifier(abbreviation: "CF", retroCharacter: "8")]
    static var rightField: [Positions:PositionIdentifier] = [.rightField:PositionIdentifier(abbreviation: "RF", retroCharacter: "9")]
    static var designtatedHitter: [Positions:PositionIdentifier] = [.designatedHitter:PositionIdentifier(abbreviation: "DH", retroCharacter: "0")]
    static var pinchHitter: [Positions:PositionIdentifier] = [.pinchHitter:PositionIdentifier(abbreviation: "PH", retroCharacter: "H")]
    static var pinchRunner: [Positions:PositionIdentifier] = [.rightField:PositionIdentifier(abbreviation: "PR", retroCharacter: "R")]
}
