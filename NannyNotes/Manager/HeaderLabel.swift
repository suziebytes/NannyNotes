//
//  HeaderView.swift
//  NannyNotes
//
//  Created by Suzie on 4/14/23.
//

import UIKit

class HeaderLabel: UILabel {
    let color = Color()
    var label = UILabel()
    var labelTitle: String = ""
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupLabel(title: labelTitle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabel(title: String) {
        addSubview(label)
        label.backgroundColor = .white
        label.font = UIFont(name: "AvenirNext-Bold", size: 20.0)
        label.text = title
        label.textColor = color.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: rightAnchor).isActive = true 
    }
}
