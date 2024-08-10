//
//  SFItalicLabel.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import UIKit

class SFItalicLabel: UILabel {
    private var size: CGFloat

    required init(size: CGFloat) {
        self.size = size
        super.init(frame: CGRect.zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .gray
        self.textAlignment = .center
        self.font = .italicSystemFont(ofSize: size)
        self.numberOfLines = .zero
    }
}
