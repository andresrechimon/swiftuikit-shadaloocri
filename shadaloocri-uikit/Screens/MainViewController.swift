//
//  MainViewController.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var headerImage: UIImageView = {
        let image = UIImageView.init()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: ConstantImage.logo)
        
        return image
    }()
    
    private lazy var selectTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Select your title"
        label.textColor = .gray
        label.textAlignment = .center
        label.font = .italicSystemFont(ofSize: 14)
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.setupView()
    }
    
    private func setupView() {
        view.addSubview(headerImage)
        view.addSubview(selectTitleLabel)
        
        NSLayoutConstraint.activate([
            headerImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            headerImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            headerImage.heightAnchor.constraint(equalToConstant: 125),
            
            selectTitleLabel.topAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: 10),
            selectTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            selectTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}
