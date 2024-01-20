
import SwiftUI

struct ScorecardView: View {
    @State var scorecard = Scorecard(holes: (1...18).map { Scorecard.HoleScore(holeNumber: $0, score: 0) })

    var body: some View {
        List(scorecard.holes.indices, id: \.self) { index in
            HStack {
                Text("Hole \(scorecard.holes[index].holeNumber)")
                Spacer()
                TextField("Score", value: $scorecard.holes[index].score, format: .number)
                    .keyboardType(.numberPad)
                    .onReceive(scorecard.holes[index].score.publisher.collect()) {
                        // Handle incorrect input
                    }
            }
        }
        .navigationTitle("Scorecard")
        .toolbar {
            Text("Total: \(scorecard.totalScore)")
        }
    }
}
