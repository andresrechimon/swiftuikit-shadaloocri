//
//  TitleSelectedViewController.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class TitleSelectedViewController: UIViewController {
    private var titleSelected: SFTitle
    
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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupView()
    }
    
    private func setupView() {
        view.addSubview(headerTitleView)
        view.addSubview(backButton)
        
        NSLayoutConstraint.activate([
            headerTitleView.topAnchor.constraint(equalTo: view.topAnchor),
            headerTitleView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerTitleView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            backButton.topAnchor.constraint(equalTo: headerTitleView.bottomAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    required init(title: SFTitle) {
        self.titleSelected = title
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
