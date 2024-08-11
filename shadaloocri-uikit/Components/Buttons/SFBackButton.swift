//
//  SFBackButton.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class SFBackButton: UIButton {
    
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
        self.setTitle("🔙", for: .normal)
        self.setTitleColor(.red, for: .normal)
        self.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
