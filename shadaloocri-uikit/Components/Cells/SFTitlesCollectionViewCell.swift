//
//  SFTitlesCollectionViewCell.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class SFTitlesCollectionViewCell: UICollectionViewCell {
    
    private lazy var cellContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var titleContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.mediumGold.cgColor
        
        return view
    }()
    
    private lazy var titleImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: ConstantImage.logo)
        
        return image
    }()
    
    private lazy var titleName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "test"
        label.textColor = .gray
        label.textAlignment = .center
        label.font = .italicSystemFont(ofSize: 16)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setup(item: SFTitleCell) {
        self.titleImage.image = UIImage(named: item.image)
        self.titleName.text = item.name
    }
    
    func applyStyle() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(cellContainerView)
        cellContainerView.addSubview(titleContainerView)
        titleContainerView.addSubview(titleImage)
        titleContainerView.addSubview(titleName)
        
        NSLayoutConstraint.activate([
            cellContainerView.topAnchor.constraint(equalTo: self.topAnchor),
            cellContainerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            cellContainerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            cellContainerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            titleContainerView.topAnchor.constraint(equalTo: cellContainerView.topAnchor),
            titleContainerView.bottomAnchor.constraint(equalTo: cellContainerView.bottomAnchor),
            titleContainerView.leadingAnchor.constraint(equalTo: cellContainerView.leadingAnchor, constant: 10),
            titleContainerView.trailingAnchor.constraint(equalTo: cellContainerView.trailingAnchor, constant: -10),
            
            titleImage.topAnchor.constraint(equalTo: titleContainerView.topAnchor, constant: 10),
            titleImage.bottomAnchor.constraint(equalTo: titleName.topAnchor),
            titleImage.leadingAnchor.constraint(equalTo: titleContainerView.leadingAnchor, constant: 15),
            titleImage.trailingAnchor.constraint(equalTo: titleContainerView.trailingAnchor, constant: -15),
            
            titleName.topAnchor.constraint(equalTo: titleImage.bottomAnchor),
            titleName.bottomAnchor.constraint(equalTo: titleContainerView.bottomAnchor, constant: -5),
            titleName.leadingAnchor.constraint(equalTo: titleContainerView.leadingAnchor, constant: 15),
            titleName.trailingAnchor.constraint(equalTo: titleContainerView.trailingAnchor, constant: -15),
            titleName.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
}
