//
//  HomeScreen.swift
//  MVVM-Example
//
//  Created by Kadir Hocaoğlu on 10.09.2023.
//

import UIKit

protocol HomeScreenInterface: AnyObject {
    func configureAll()
}

final class HomeScreen: UIViewController {
    private let viewModel = HomeViewModel()
    private var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        
        viewModel.viewDidLoad()
        
    }
    

}

extension HomeScreen: HomeScreenInterface {
    
    func configureAll(){
        configureVC()
        configureCollectionView()
       
    }
    func configureVC() {
        view.backgroundColor = .blue
    }
    func configureCollectionView() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UIHelper.createHomeFlowLayout())
        view.addSubview(collectionView)

        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: MovieCollectionViewCell.reuseID)
        
        collectionView.pinToEdgesOf(view: view)
 
    }
    
}

extension HomeScreen: confCollectionView {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCollectionViewCell.reuseID, for: indexPath) as! MovieCollectionViewCell
        return cell
    }
    
      
}

