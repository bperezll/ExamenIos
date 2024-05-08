//
//  MovieProvider.swift
//  ExamenIos
//
//  Created by Mañanas on 8/5/24.
//

import Foundation

class MovieProvider {
    
    static func searchByName(query: String, completionHandler: @escaping ([Movie]) -> Void) {
        let url = URL(string: "\(Constants.API_BASE_URL)s=\(query)")!
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error fetching movies: \(error)")
                return
            }
            
            /*if let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) {
                print("Error with the response, unexpected status code: \(httpResponse.statusCode)")
                return
            }*/
            
            guard let data = data else {
                print("Error with the data")
                return
            }
            
            print("Data: \(data)")
            
            guard let json = try? JSONDecoder().decode(MovieResponse.self, from: data) else {
                print("JSON parse exception")
                return
            }
            
            completionHandler(json.results)
            
        })
        
        task.resume()
    }
    
    static func findById() {
        
    }
}

// MARK: Utils

struct RuntimeError: Error {
    let description: String

    init(_ description: String) {
        self.description = description
    }
}
