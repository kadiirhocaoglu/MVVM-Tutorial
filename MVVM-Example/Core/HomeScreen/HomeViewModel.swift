//
//  HomeViewModel.swift
//  MVVM-Example
//
//  Created by Kadir Hocaoğlu on 10.09.2023.
//

import Foundation

protocol HomeViewModelInterface {
   var view: HomeScreenInterface? { get set }
    func viewDidLoad()
    func getMovies()
}

final class HomeViewModel {
    weak var view: HomeScreenInterface?
    private let service = MovieService()
    var movies: [MovieResult] = []
     
}

extension HomeViewModel: HomeViewModelInterface {
    func viewDidLoad() {
        view?.configureAll()
        getMovies()
    }
    func getMovies() {
        service.downloadMovies {    [weak self] returnedMovies in
            guard let self = self else { return }
            guard let returnedMovies = returnedMovies else { return }
            self.movies = returnedMovies
            print(returnedMovies)
        }
    }
}
