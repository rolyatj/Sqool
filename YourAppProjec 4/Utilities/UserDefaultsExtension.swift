
import Foundation

extension UserDefaults {
    // MARK: - User Preferences

    private enum Keys {
        static let hasSeenAppIntroduction = "hasSeenAppIntroduction"
        // Add more keys as needed
    }

    var hasSeenAppIntroduction: Bool {
        get { return bool(forKey: Keys.hasSeenAppIntroduction) }
        set { set(newValue, forKey: Keys.hasSeenAppIntroduction) }
    }

    // Add more properties as needed for user preferences
}
