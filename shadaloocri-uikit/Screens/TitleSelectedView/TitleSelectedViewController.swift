//
//  TitleSelectedViewController.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class TitleSelectedViewController: UIViewController {
    private var viewModel: TitleSelectedViewModel = TitleSelectedViewModel()
    private var titleSelected: SFTitle
    private var charactersSetted: [SFCharacter] = []
    
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
    
    private lazy var charactersTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(SFCharactersTableViewCell.self, forCellReuseIdentifier: "SFCharactersTableViewCell")
        
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupView()
        filteredByEntry(characters: viewModel.characters)
    }
    
    private func filteredByEntry(characters: [SFCharacter]) {
        self.charactersSetted = viewModel.characters.filter({$0.title == self.titleSelected.title}).sorted(by: {$0.name < $1.name })
        charactersTableView.reloadData()
    }
    
    private func setupView() {
        view.addSubview(headerTitleView)
        view.addSubview(backButton)
        view.addSubview(goldenSeparatorView)
        view.addSubview(charactersTableView)
        
        NSLayoutConstraint.activate([
            headerTitleView.topAnchor.constraint(equalTo: view.topAnchor),
            headerTitleView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerTitleView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            backButton.topAnchor.constraint(equalTo: headerTitleView.bottomAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            goldenSeparatorView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            goldenSeparatorView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            goldenSeparatorView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            charactersTableView.topAnchor.constraint(equalTo: goldenSeparatorView.bottomAnchor),
            charactersTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            charactersTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            charactersTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
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

extension TitleSelectedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charactersSetted.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SFCharactersTableViewCell", for: indexPath) as! SFCharactersTableViewCell
        cell.selectionStyle = .none
        let model = charactersSetted[indexPath.row]
        cell.setup(model: model)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! SFCharactersTableViewCell
        print(charactersSetted[indexPath.row].name)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
