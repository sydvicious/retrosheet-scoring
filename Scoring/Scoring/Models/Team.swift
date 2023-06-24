//
//  Team.swift
//  Scoring
//
//  Created by Syd Polk on 6/23/23.
//

import Foundation
import SwiftData

@Model
final class Team {
    struct CityAffiliation {
        var city: String
        var nickname: String?
        var abbreviation: String?
        var league: String
        var year: Int
    }
    
    @Attribute(.unique) var id: UUID
    var cityAffiliations: [CityAffiliation]
    var players: [Player]
        
    init() {
        self.id = UUID()
        self.cityAffiliations = []
        self.players = []
    }
    
    func addAffiliation(city: String, nickname: String?, abbreviation: String?, league: String, year: Int) {
        let affiliation = CityAffiliation(city: city, nickname: nickname, abbreviation: abbreviation, league: league, year: year)
        self.cityAffiliations.append(affiliation)
    }
}
