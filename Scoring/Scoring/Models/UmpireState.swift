//
//  UmpireState.swift
//  Scoring
//
//  Created by Syd Polk on 6/24/23.
//

import SwiftUI
import SwiftData

@Model
final class UmpireState {
    var home: Person?
    var firstBase: Person?
    var secondBase: Person?
    var thirdBase: Person?
    var leftField: Person?
    var rightField: Person?
    
    init(home: Person? = nil,
         firstBase: Person? = nil,
         secondBase: Person? = nil,
         thirdBase: Person? = nil,
         leftField: Person? = nil,
         rightField: Person? = nil) {
        self.home = home
        self.firstBase = firstBase
        self.secondBase = secondBase
        self.thirdBase = thirdBase
        self.leftField = leftField
        self.rightField = rightField
    }
}
