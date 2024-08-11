//
//  TitleHeaderView.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class TitleHeaderView: UIImageView {
    private var titleSelected: SFTitle
    
    private lazy var goldenFilterView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .heavyGold.withAlphaComponent(0.8)
        
        return view
    }()
    
    private lazy var titleLogo: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: titleSelected.image)
        
        NSLayoutConstraint.activate([
            image.heightAnchor.constraint(equalToConstant: 100),
            image.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        return image
    }()
    
    required init(title: SFTitle) {
        self.titleSelected = title
        super.init(frame: CGRect.zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(named: titleSelected.background)
        
        self.addSubview(goldenFilterView)
        goldenFilterView.addSubview(titleLogo)
        
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 170),
            
            goldenFilterView.topAnchor.constraint(equalTo: self.topAnchor),
            goldenFilterView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            goldenFilterView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            goldenFilterView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            titleLogo.bottomAnchor.constraint(equalTo: goldenFilterView.bottomAnchor, constant: -10),
            titleLogo.centerXAnchor.constraint(equalTo: goldenFilterView.centerXAnchor)
        ])
    }
}
