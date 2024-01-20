
import SwiftUI

struct LinksLegendsView: View {
    let players: [Player] = [
        Player(name: "Tiger Woods", accuracy: 95, distance: 95, putting: 90, shortGame: 90, recovery: 90, overallRating: 95)
        // ... Add other players here with their respective attributes
    ]

    var body: some View {
        List(players, id: \.name) { player in
            VStack(alignment: .leading) {
                Text(player.name).font(.headline)
                HStack {
                    Text("Overall Rating: \(player.overallRating)")
                    Spacer()
                    Text("Accuracy: \(player.accuracy)")
                }
            }
        }
        .navigationTitle("Links Legends")
    }
}
