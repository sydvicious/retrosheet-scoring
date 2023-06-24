//
//  Player.swift
//  Scoring
//
//  Created by Syd Polk on 6/23/23.
//

import Foundation
import SwiftData

@Model
final class Person {
    @Attribute(.unique) var id: UUID
    
    var lastName: String
    var firstName: String
    
    // Fill in biographical data here
    
    // Batting stats
    
    // Basehitting stats
    
    // Pitching stats
    
    // Fielding stats
    
    // Managing stats
    
    // Umpiring stats
    
    init(lastName: String, firstName: String) {
        self.id = UUID()
        self.lastName = lastName
        self.firstName = firstName
    }
}
