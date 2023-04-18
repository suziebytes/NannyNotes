//
//  HeaderView.swift
//  NannyNotes
//
//  Created by Suzie on 4/14/23.
//

import UIKit

class HeaderLabel: UILabel {
    let container = UIView()
    let color = Color()
    let fontStyle = Font()
    var label = UILabel()
    var labelTitle: String = ""
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupContainer()
        setupLabel(title: labelTitle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupContainer() {
        addSubview(container)
        container.backgroundColor = color.purple
        container.layer.cornerRadius = 15
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOpacity = 0.2
        container.layer.shadowOffset = .zero
        container.layer.shadowRadius = 1
        
        container.translatesAutoresizingMaskIntoConstraints = false
        container.topAnchor.constraint(equalTo: topAnchor).isActive = true
        container.heightAnchor.constraint(equalToConstant: 75).isActive = true
        container.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        container.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    func setupLabel(title: String) {
        container.addSubview(label)
        label.font = fontStyle.title
        label.textColor = .white
        label.text = title.uppercased()

        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 20).isActive = true
    }
}
