//
//  TableViewCell.swift
//  NannyNotes
//
//  Created by Suzie on 4/14/23.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    var title = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
        setupTitle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set() {
        
    }
    
    func setupCell() {
        clipsToBounds = true
        backgroundColor = .systemMint
    }
    
    func setupTitle() {
        addSubview(title)
        title.numberOfLines = 0
        title.adjustsFontSizeToFitWidth = true
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.topAnchor.constraint(equalTo: topAnchor).isActive = true
        title.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        title.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
}
