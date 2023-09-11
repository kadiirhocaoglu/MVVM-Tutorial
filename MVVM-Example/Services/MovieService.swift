//
//  MovieService.swift
//  MVVM-Example
//
//  Created by Kadir Hocaoğlu on 10.09.2023.
//

import Foundation

class MovieService {
    
    func downloadMovies(completion: @escaping ([MovieResult]?) -> ()) {
        guard let url = URL(string: APIURLs.movies(page: 1)) else {return}
        
        NetworkManager.shared.download(url: url) { [weak self] result in
            guard let self = self else { return}
            switch result {
            case .success(let data):
                completion(self.handleWithData(data))
            case .failure(let error):
                self.handleWithError(error)
            }
        }
    }
    private func handleWithError(_ error: Error) {
        print(error.localizedDescription)
    }
    private func handleWithData (_ data: Data) -> [MovieResult]? {
        let jsonDecoder = JSONDecoder()
        do {
            let movie = try jsonDecoder.decode(Movie.self, from: data)
            return movie.results
        } catch let error {
            print(error)
            return nil
        }
    }
}
