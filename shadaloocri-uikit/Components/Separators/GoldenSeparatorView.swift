//
//  GoldenSeparatorView.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class GoldenSeparatorView: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .heavyGold
        
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}

