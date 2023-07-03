//
//  ContentView.swift
//  Scoring
//
//  Created by Syd Polk on 6/22/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var games: [Game]
    
    @State private var gameWizardCompleted: Bool = true
    @State private var newGame: Game? = nil
    
    var body: some View {
        NavigationView {
            List {
                ForEach(games) { game in
                    NavigationLink {
                        Text("Item at \(game.datePlayed, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text("\(game.datePlayed, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            /*
            let formatter = DateFormatter()
            let newGame = Game(datePlayed: formatter.date(from: "May 24, 1994")!, stadium: Stadium(name: "Dodger Stadium", city: "Los Angeles", state: "CA"), startTime: formatter.date(from: "May 24, 1994 19:05 PDT")!, umpireState: UmpireState(firstBase: Person(lastName: "Joyce", firstName: "Jim")), visitingTeam: Team(), vistingDefenese: <#T##Defense#>, visitingBattingOrder: <#T##[BattingOrderEntry]#>, homeTeam: <#T##Team#>, homeDefense: <#T##Defense#>, homeBattingOrder: <#T##[BattingOrderEntry]#>, state: <#T##GameState#>, events: <#T##[Event]#>)
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
             */
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(games[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Game.self, inMemory: true)
}
