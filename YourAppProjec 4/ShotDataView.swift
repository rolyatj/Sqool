
import SwiftUI

struct ShotDataView: View {
    @State private var shotData = ShotData(distance: 0, direction: "", clubUsed: "")

    var body: some View {
        Form {
            Section(header: Text("Shot Data")) {
                TextField("Distance", value: $shotData.distance, format: .number)
                TextField("Direction", text: $shotData.direction)
                TextField("Club Used", text: $shotData.clubUsed)
            }
        }
    }
}
