//
//  UIViewExtensions.swift
//  MVVM-Example
//
//  Created by Kadir Hocaoğlu on 13.09.2023.
//

import UIKit

extension UIView {
    func pinToEdgesOf (view: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
