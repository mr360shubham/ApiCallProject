//
//  ViewModel.swift
//  Apicall
//
//  Created by Shubam Vijay Yeme on 15/07/24.
//

import Foundation

class APIViewModel {
    
    func callApi(completion : @escaping (Result<MovieResponse, Error>) -> Void) {
        guard let url = URL(string: "https://www.omdbapi.com/?apikey=2c0d1dab&s=dark") else {
            completion(.failure(NSError(domain: "error in url", code: 0)))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(NSError(domain: "", code: 0)))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "error in data", code: 0)))
                return
            }
            
            do {
                let json = try JSONDecoder().decode(MovieResponse.self, from: data)
                completion(.success(json))
            }
            catch let error{
                completion(.failure(NSError(domain: "error in decode", code: 0)))
            }
        }
        task.resume()
        
    }
    
}
