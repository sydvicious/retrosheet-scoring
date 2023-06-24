//
//  Stadium.swift
//  Scoring
//
//  Created by Syd Polk on 6/23/23.
//

import Foundation
import SwiftData

@Model
final class Stadium {
    @Attribute(.unique) var id: UUID
    
    var name: String
    var address: String?
    var city: String
    var state: String
    var country: String
    
    var previousNames: [String]
    var homeTeams: [Team]
        
    init(name: String, address: String? = nil, city: String, state: String, country: String = "United States of America") {
        self.id = UUID()
        self.name = name
        self.address = address
        self.city = city
        self.state = state
        self.country = country
        
        self.previousNames = [String]()
        self.previousNames.append(name)
        self.homeTeams = [Team]()
    }
}
