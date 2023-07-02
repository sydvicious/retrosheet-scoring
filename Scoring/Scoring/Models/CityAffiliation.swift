//
//  CityAffiliation.swift
//  Scoring
//
//  Created by Syd Polk on 7/2/23.
//

import SwiftUI
import SwiftData

@Model
final class CityAffiliation {
    var city: String
    var nickname: String?
    var abbreviation: String?
    var league: String
    var year: Int
    
    init(city: String, nickname: String? = nil, abbreviation: String? = nil, league: String, year: Int) {
        self.city = city
        self.nickname = nickname
        self.abbreviation = abbreviation
        self.league = league
        self.year = year
    }
}
