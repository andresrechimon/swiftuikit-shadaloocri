//
//  SFBackButton.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class SFBackButton: UIButton {
    
    private lazy var leadingIconView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .mediumGold
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: ConstantImage.skullIcon)
        
        NSLayoutConstraint.activate([
            image.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        return image
    }()
    
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
        self.setImage(UIImage(named: ConstantImage.bisonBack), for: .normal)
        
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 40),
            self.widthAnchor.constraint(equalToConstant: 86)
        ])
    }

}
