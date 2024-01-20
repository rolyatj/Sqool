
struct Scorecard {
    var holes: [HoleScore]

    var totalScore: Int {
        holes.reduce(0) { $0 + $1.score }
    }

    struct HoleScore {
        let holeNumber: Int
        var score: Int
    }
}
