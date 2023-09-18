//
//  APIURLs.swift
//  MVVM-Example
//
//  Created by Kadir Hocaoğlu on 10.09.2023.
//

import Foundation

enum APIURLs: String {
    case base_URL = "https://api.themoviedb.org/3/movie/popular?"
    case api_KEY  = "api_key=0099f18a2d4cc7d729d02016511db3ec"
    case lang_page = "&language=en-US&page="
    
    static func movies(page: Int) -> String {
       
        return "\(APIURLs.base_URL.rawValue)\(APIURLs.api_KEY.rawValue)\(APIURLs.lang_page.rawValue)\(page)"
    }
}
