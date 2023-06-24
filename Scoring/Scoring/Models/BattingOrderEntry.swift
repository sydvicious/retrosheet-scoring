//
//  BattingOrderEntry.swift
//  Scoring
//
//  Created by Syd Polk on 6/24/23.
//

import Foundation
import SwiftData

@Model
final class BattingOrderEntry {
    var number: Int
    var batter: Person
    var positionRetroCode: String
    
    init(number: Int,
         batter: Person,
         positionRetroCode: String) {
        self.number = number
        self.batter = batter
        self.positionRetroCode = positionRetroCode
    }
}
