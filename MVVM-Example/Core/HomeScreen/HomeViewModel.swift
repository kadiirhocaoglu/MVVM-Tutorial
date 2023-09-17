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
}

final class HomeViewModel {
   weak var view: HomeScreenInterface?
}

extension HomeViewModel: HomeViewModelInterface {
    func viewDidLoad() {
        view?.configureAll()
        
    }
}
