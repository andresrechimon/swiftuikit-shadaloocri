//
//  CharacterOverlayViewController.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 27/08/2024.
//

import UIKit

class CharacterOverlayViewController: UIViewController {
    private var characterSelected: SFCharacter
    
    private lazy var fadeBackgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var modalView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.mediumGold.cgColor
        
        return view
    }()
    
    //CONTENT
    private lazy var closeModalButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        button.tintColor =  .mediumGold
        button.imageView?.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1.5)
        button.addTarget(self, action: #selector(closeAction), for: .touchUpInside)
        
        return button
    }()
    
    @objc func closeAction() {
        hide()
    }
    
    private lazy var avatarImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: self.characterSelected.avatar)
        
        NSLayoutConstraint.activate([
            image.heightAnchor.constraint(equalToConstant: 70),
            image.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        image.layer.cornerRadius = 35
        image.clipsToBounds = true
        
        return image
    }()
    
    private let infoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5
        
        return stackView
    }()
    
    private lazy var bioTitleLabel: SFItalicLabel = {
        let label = SFItalicLabel(size: 14)
        label.text = NSLocalizedString("SF_Bio_Character_Selected", comment: "")
        
        return label
    }()
    
    private lazy var bioBodyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .zero
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 12)
        label.adjustsFontSizeToFitWidth = true
        let strokeTextAttributes: [NSAttributedString.Key : Any] = [
            .strokeColor : UIColor.heavyGold,
            .foregroundColor : UIColor.black,
            .strokeWidth : -2.0,
            ]

        label.attributedText = NSAttributedString(string: self.characterSelected.bio, attributes: strokeTextAttributes)
        
        return label
    }()
    //CONTENT

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupView()
        setAvatarTrailingInfoLabels()
        print(self.characterSelected)
    }
    
    required init(character: SFCharacter) {
        self.characterSelected = character
        super.init(nibName: nil, bundle: nil)
        self.modalPresentationStyle = .overFullScreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        view.backgroundColor  = .clear
        fadeBackgroundView.backgroundColor = .black.withAlphaComponent(0.6)
        fadeBackgroundView.alpha = 0
        modalView.alpha = 0
        
        view.addSubview(fadeBackgroundView)
        view.addSubview(modalView)
        
        modalView.addSubview(closeModalButton)
        modalView.addSubview(avatarImageView)
        modalView.addSubview(infoStackView)
        modalView.addSubview(bioTitleLabel)
        modalView.addSubview(bioBodyLabel)
        
        NSLayoutConstraint.activate([
            fadeBackgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            fadeBackgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            fadeBackgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            fadeBackgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            modalView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            modalView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modalView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            modalView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            closeModalButton.topAnchor.constraint(equalTo: modalView.topAnchor, constant: 20),
            closeModalButton.trailingAnchor.constraint(equalTo: modalView.trailingAnchor, constant: -20),
            
            avatarImageView.topAnchor.constraint(equalTo: closeModalButton.bottomAnchor, constant: 15),
            avatarImageView.leadingAnchor.constraint(equalTo: modalView.leadingAnchor, constant: 20),
            
            infoStackView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 15),
            infoStackView.leadingAnchor.constraint(equalTo: modalView.leadingAnchor, constant: 20),
            infoStackView.trailingAnchor.constraint(equalTo: modalView.trailingAnchor, constant: -20),
            
            bioTitleLabel.topAnchor.constraint(equalTo: infoStackView.bottomAnchor, constant: 30),
            bioTitleLabel.leadingAnchor.constraint(equalTo: modalView.leadingAnchor, constant: 20),
            bioTitleLabel.trailingAnchor.constraint(equalTo: modalView.trailingAnchor, constant: -20),
            
            bioBodyLabel.topAnchor.constraint(equalTo: bioTitleLabel.bottomAnchor, constant: 10),
            bioBodyLabel.bottomAnchor.constraint(equalTo: modalView.bottomAnchor, constant: -15),
            bioBodyLabel.leadingAnchor.constraint(equalTo: modalView.leadingAnchor, constant: 20),
            bioBodyLabel.trailingAnchor.constraint(equalTo: modalView.trailingAnchor, constant: -20),
        ])
    }
    
    private func setAvatarTrailingInfoLabels() {
        [
         "Name: \(self.characterSelected.name)",
         "From: \(self.characterSelected.country)",
         "First appearance: \(self.characterSelected.debutGame) (\(self.characterSelected.debutYear))"
        ].forEach { info in
            let label = UILabel()
            label.font = .systemFont(ofSize: 12)
            label.numberOfLines = .zero
            label.adjustsFontSizeToFitWidth = true
            let strokeTextAttributes: [NSAttributedString.Key : Any] = [
                .strokeColor : UIColor.heavyGold,
                .foregroundColor : UIColor.black,
                .strokeWidth : -2.0,
                ]

            label.attributedText = NSAttributedString(string: info, attributes: strokeTextAttributes)
            
            infoStackView.addArrangedSubview(label)
        }
    }
    
    func appear(sender: UIViewController) {
        sender.present(self, animated: false) {
            self.showContent()
        }
    }
    
    private func showContent() {
        UIView.animate(withDuration: 0.5, delay: 0.1) {
            self.fadeBackgroundView.alpha = 1
            self.modalView.alpha = 1
        }
    }
    
    func hide() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
            self.fadeBackgroundView.alpha = 0
            self.modalView.alpha = 0
        } completion: { _ in
            self.dismiss(animated: false)
            self.removeFromParent()
        }
    }
}
