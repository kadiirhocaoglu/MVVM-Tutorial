//
//  Movie.swift
//  MVVM-Example
//
//  Created by Kadir Hocaoğlu on 10.09.2023.
//

import Foundation

// MARK: - Movie
struct Movie: Decodable {
    let results: [MovieResult]?
    
}

// MARK: - MovieResult
struct MovieResult: Decodable {
    let id: Int?
    let posterPath: String?

    enum CodingKeys: String, CodingKey {
        case id
        case posterPath = "poster_path"
    }
}

