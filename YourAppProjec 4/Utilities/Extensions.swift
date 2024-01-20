
import Foundation
import UIKit

// MARK: - String Extensions
extension String {
    // Example: A simple extension to trim whitespaces
    var trimmed: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

// MARK: - UIViewController Extensions
extension UIViewController {
    // Example: An extension to easily present alerts
    func presentAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}

// Add more extensions as needed
