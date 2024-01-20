
func calculateHandicap(scores: [Int]) -> Double {
    guard !scores.isEmpty else { return 0.0 }

    let sortedScores = scores.sorted().prefix(10) // Take 10 best scores
    let average = sortedScores.reduce(0, +) / Double(sortedScores.count)
    return average * 0.96 // Handicap Index formula
}
