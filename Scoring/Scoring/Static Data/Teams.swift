//
//  Teams.swift
//  Scoring
//
//  Created by Syd Polk on 6/25/23.
//

import Foundation
import SwiftData

struct Teams {

    var container: ModelContainer?
    
    init() {
        do {
            container = try ModelContainer(
                for: Team.self)
                //...more code to come
        } catch {
            fatalError("Failed to create container")
        }
    }
    
}
