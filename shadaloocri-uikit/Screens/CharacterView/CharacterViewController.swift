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
    
    private lazy var avatarImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: self.characterSelected.avatar)
        
        NSLayoutConstraint.activate([
            image.heightAnchor.constraint(equalToConstant: 150),
            image.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        return image
    }()
    
    private let avatarTrailingInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5
        return stackView
    }()
    
    private lazy var nameLabel: SFItalicLabel = {
        let label = SFItalicLabel(size: 14)
        label.text = NSLocalizedString("SF_Select_Your_Titles", comment: "")
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupView()
        setAvatarTrailingInfoLabels()
        print(self.characterSelected)
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
        view.addSubview(avatarImageView)
        view.addSubview(avatarTrailingInfoStackView)
        
        NSLayoutConstraint.activate([
            headerTitleView.topAnchor.constraint(equalTo: view.topAnchor),
            headerTitleView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerTitleView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            backButton.topAnchor.constraint(equalTo: headerTitleView.bottomAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            goldenSeparatorView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            goldenSeparatorView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            goldenSeparatorView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            avatarImageView.topAnchor.constraint(equalTo: goldenSeparatorView.bottomAnchor, constant: 15),
            avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            avatarTrailingInfoStackView.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
            avatarTrailingInfoStackView.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor),
            avatarTrailingInfoStackView.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 5),
            avatarTrailingInfoStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    private func setAvatarTrailingInfoLabels() {
        [
         "Name: \(self.characterSelected.name)",
         "From: \(self.characterSelected.country)",
         "First appearance: \(self.characterSelected.debutGame) (\(self.characterSelected.debutYear))"
        ].forEach { info in
            let label = UILabel()
            label.numberOfLines = .zero
            label.adjustsFontSizeToFitWidth = true
            let strokeTextAttributes: [NSAttributedString.Key : Any] = [
                .strokeColor : UIColor.heavyGold,
                .foregroundColor : UIColor.black,
                .strokeWidth : -2.0,
                ]

            label.attributedText = NSAttributedString(string: info, attributes: strokeTextAttributes)
            
            avatarTrailingInfoStackView.addArrangedSubview(label)
        }
    }
}
