//
//  MainViewController.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class MainViewController: UIViewController {
    
    private let titles: [SFTitleCell] = [
        SFTitleCell(image: ConstantImage.ssf2tLogo, name: "Super Street fighter 2 Turbo"),
        SFTitleCell(image: ConstantImage.sf3tiLogo, name: "Street Fighter 3: Third Impact"),
        SFTitleCell(image: ConstantImage.usfivLogo, name: "Ultra Street Fighter 4"),
    ]
    
    private lazy var layout: UICollectionViewLayout = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            layout.minimumInteritemSpacing = 0
            layout.minimumLineSpacing = 0
            return layout
    }()
    
    private lazy var headerImage: UIImageView = {
        let image = UIImageView.init()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: ConstantImage.logo)
        
        return image
    }()
    
    private lazy var selectTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = NSLocalizedString("SF_Select_Your_Titles", comment: "")
        label.textColor = .gray
        label.textAlignment = .center
        label.font = .italicSystemFont(ofSize: 14)
        
        return label
    }()
    
    //collection
    private lazy var sfTitlesCarouselCollectionView: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: self.layout)
        collection.backgroundColor = .clear
        collection.dataSource = self
        collection.delegate = self
        collection.isPagingEnabled = true
        collection.showsHorizontalScrollIndicator = false
        collection.register(SFTitlesCollectionViewCell.self, forCellWithReuseIdentifier: "SFTitlesCollectionViewCell")
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collection.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        return collection
    }()
    
    //PAGE CONTROL
        private lazy var cardPageControl: UIPageControl = {
            let control: UIPageControl = .init()
            control.translatesAutoresizingMaskIntoConstraints = false
            control.pageIndicatorTintColor = .gray
            control.currentPageIndicatorTintColor = .heavyGold
            control.isUserInteractionEnabled = false
            control.numberOfPages = titles.count
            
            return control
        }()
        //PAGE CONTROL
    //collection

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.setupView()
    }
    
    private func setupView() {
        view.addSubview(headerImage)
        view.addSubview(selectTitleLabel)
        view.addSubview(sfTitlesCarouselCollectionView)
        view.addSubview(cardPageControl)
        
        NSLayoutConstraint.activate([
            headerImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            headerImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            headerImage.heightAnchor.constraint(equalToConstant: 125),
            
            selectTitleLabel.topAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: 10),
            selectTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            selectTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            sfTitlesCarouselCollectionView.topAnchor.constraint(equalTo: selectTitleLabel.bottomAnchor, constant: 30),
            sfTitlesCarouselCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            sfTitlesCarouselCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            cardPageControl.topAnchor.constraint(equalTo: sfTitlesCarouselCollectionView.bottomAnchor, constant: 10),
            cardPageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            cardPageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell: SFTitlesCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SFTitlesCollectionViewCell", for: indexPath) as? SFTitlesCollectionViewCell else { fatalError() }
            cell.setup(item: titles[indexPath.row])
            
            return cell
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: sfTitlesCarouselCollectionView.frame.width, height: 200)
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            for cell in sfTitlesCarouselCollectionView.visibleCells {
                let indexPath = sfTitlesCarouselCollectionView.indexPath(for: cell)
            }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentPage = Int(round(scrollView.contentOffset.x / scrollView.bounds.width))
        cardPageControl.currentPage = currentPage
    }
}
