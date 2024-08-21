//
//  CharacterViewController.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 21/08/2024.
//

import UIKit

class CharacterViewController: UIViewController {
    private var titleSelected: SFTitle
    private var characterSelected: SFCharacter
    
    private lazy var headerTitleView: TitleHeaderView = {
        let view = TitleHeaderView(title: titleSelected)
        
        return view
    }()
    
    private lazy var backButton: SFBackButton = {
        let button = SFBackButton()
        button.addTarget(self, action: #selector(goBackAction), for: .touchUpInside)
        
        return button
    }()
    
    @objc func goBackAction() {
        self.navigationController?.popViewController(animated: true)
    }
    
    private lazy var goldenSeparatorView: GoldenSeparatorView = {
        let view = GoldenSeparatorView()
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        print(self.titleSelected)
        print(self.characterSelected)
        setupView()
    }
    
    required init(title: SFTitle, character: SFCharacter) {
        self.titleSelected = title
        self.characterSelected = character
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        view.addSubview(headerTitleView)
        view.addSubview(backButton)
        view.addSubview(goldenSeparatorView)
        
        NSLayoutConstraint.activate([
            headerTitleView.topAnchor.constraint(equalTo: view.topAnchor),
            headerTitleView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerTitleView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            backButton.topAnchor.constraint(equalTo: headerTitleView.bottomAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            goldenSeparatorView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            goldenSeparatorView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            goldenSeparatorView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
