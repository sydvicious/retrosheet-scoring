//
//  StadiumSelector.swift
//  Scoring
//
//  Created by Syd Polk on 7/2/23.
//

import SwiftUI
import SwiftData

struct StadiumSelector: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var stadiums: [Stadium]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    StadiumSelector()
        .modelContainer(for: Stadium.self, inMemory: true)

}
