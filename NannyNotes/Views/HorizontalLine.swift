//
//  HorizontalLine.swift
//  NannyNotes
//
//  Created by Suzie on 4/14/23.
//

import UIKit

class HorizontalLine: UIView {
    let color = Color()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupLine()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLine() {
        backgroundColor = color.mediumGray
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}

