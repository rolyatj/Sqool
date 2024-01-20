
import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}

    func fetchData(from url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: nil)))
                return
            }
            completion(.success(data))
        }.resume()
    }

    // Add more functions as needed for specific API requests
}
