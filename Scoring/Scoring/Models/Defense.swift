//
//  Defense.swift
//  Scoring
//
//  Created by Syd Polk on 6/24/23.
//

import Foundation
import SwiftData

@Model
final class Defense {
    var pitcher: Person
    var catcher: Person
    var firstBaseman: Person
    var secondBaseman: Person
    var thirdBaseman: Person
    var shortStop: Person
    var leftFielder: Person
    var centerFielder: Person
    var rightFielder: Person
    var designatedHitter: Person?
    
    init(pitcher: Person,
         catcher: Person,
         firstBaseman: Person,
         secondBaseman: Person,
         thirdBaseman: Person,
         shortStop: Person,
         leftFielder: Person,
         centerFielder: Person,
         rightFielder: Person,
         designatedHitter: Person? = nil) {
        self.pitcher = pitcher
        self.catcher = catcher
        self.firstBaseman = firstBaseman
        self.secondBaseman = secondBaseman
        self.thirdBaseman = thirdBaseman
        self.shortStop = shortStop
        self.leftFielder = leftFielder
        self.centerFielder = centerFielder
        self.rightFielder = rightFielder
        self.designatedHitter = designatedHitter
    }
}
