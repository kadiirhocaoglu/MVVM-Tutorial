//
//  UIHelper.swift
//  MVVM-Example
//
//  Created by Kadir Hocaoğlu on 17.09.2023.
//

import UIKit

enum UIHelper {
    static func createHomeFlowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: .dWidth, height: .dHeight/3)
        layout.minimumLineSpacing = CGFloat.dWidth/12
        return layout
    }
}
