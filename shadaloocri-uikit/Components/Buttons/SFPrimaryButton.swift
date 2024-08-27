//
//  SFPrimaryButton.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class SFPrimaryButton: UIButton {
    
    private lazy var leadingIconView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .mediumGold
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
        self.backgroundColor = .mediumGold
        self.setTitleColor(.black, for: .normal)
        self.titleLabel?.font = .boldSystemFont(ofSize: 20)
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.heavyGold.cgColor
        self.layer.cornerRadius = 8
        self.addSubview(leadingIconView)
        
        NSLayoutConstraint.activate([
            leadingIconView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            leadingIconView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            leadingIconView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5)
        ])
    }
}
