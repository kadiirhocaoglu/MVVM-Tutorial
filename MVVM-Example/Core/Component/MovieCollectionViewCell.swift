//
//  MovieCollectionViewCell.swift
//  MVVM-Example
//
//  Created by Kadir Hocaoğlu on 17.09.2023.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    static let reuseID = "MovieCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCell(){
        backgroundColor = .orange
        
    }
}

