//
//  Button.swift
//  NannyNotes
//
//  Created by Suzie on 4/18/23.
//

import UIKit

class Button: UIButton {
    let text: String = ""
    let color = Color()
    let font = Font()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupButton(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton(text: String ) {
//        backgroundColor = color.purple
        titleLabel?.textColor = color.pinkOne
        titleLabel?.text = text
        titleLabel?.font = font.title
        setTitle(text, for: .normal)
        layer.cornerRadius = 15
        //layer.borderWidth = 2
        //layer.borderColor = color.pinkTwo.cgColor
        
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: topAnchor).isActive = true
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        widthAnchor.constraint(equalToConstant: 50).isActive = true
        rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        leftAnchor.constraint(equalTo: leftAnchor).isActive = true
    }
}
