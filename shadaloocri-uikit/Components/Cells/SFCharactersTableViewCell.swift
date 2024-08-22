//
//  SFCharactersTableViewCell.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class SFCharactersTableViewCell: UITableViewCell {
    
    private lazy var avatarImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image.heightAnchor.constraint(equalToConstant: 80),
            image.widthAnchor.constraint(equalToConstant: 80)
        ])
        
        return image
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        applyStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func applyStyle() {
        self.addSubview(avatarImageView)
        self.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor),
            avatarImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 15),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15)
        ])
    }
    
    func setup(model: SFCharacter) {
        avatarImageView.image = UIImage(named: model.avatar)
        let strokeTextAttributes: [NSAttributedString.Key : Any] = [
            .strokeColor : UIColor.heavyGold,
            .foregroundColor : UIColor.black,
            .strokeWidth : -2.0,
            ]

        nameLabel.attributedText = NSAttributedString(string: model.name, attributes: strokeTextAttributes)
    }
}
