//
//  HomeScreen.swift
//  MVVM-Example
//
//  Created by Kadir Hocaoğlu on 10.09.2023.
//

import UIKit

protocol HomeScreenInterface: AnyObject {
    
}

final class HomeScreen: UIViewController {

    private let viewModel = HomeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        
    }
    

}

extension HomeScreen: HomeScreenInterface {
    
}
