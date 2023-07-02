//
//  Team.swift
//  Scoring
//
//  Created by Syd Polk on 6/23/23.
//

import SwiftUI
import SwiftData

@Model
final class Team {
    @Attribute(.unique) var id: UUID
    var cityAffiliations: [CityAffiliation]
    var players: [Person]
        
    init(city: String, nickname: String?, league: String, year: Int) {
        self.id = UUID()
        self.cityAffiliations = []
        let affilation = CityAffiliation(city: city, nickname: nickname, league: league, year: year)
        self.cityAffiliations.append(affilation)
        self.players = []
    }
    
    func addAffiliation(city: String, nickname: String?, abbreviation: String?, league: String, year: Int) {
        let affiliation = CityAffiliation(city: city, nickname: nickname, abbreviation: abbreviation, league: league, year: year)
        self.cityAffiliations.append(affiliation)
    }
}
