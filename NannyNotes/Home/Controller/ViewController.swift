//
//  ViewController.swift
//  NannyNotes
//
//  Created by Suzie on 4/13/23.
//

import UIKit

class ViewController: UIViewController {
    let headerLabel = HeaderLabel()
    let horiztonalLine = HorizontalLine()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        print("hello")
        setupHeader()
        setupHorizontalLine()
    }
    
    func setupHeader() {
        view.addSubview(headerLabel)
        headerLabel.setupLabel(title: "Hello Sarah")
        
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        headerLabel.heightAnchor.constraint(equalToConstant: 50 ).isActive = true
        headerLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        headerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        headerLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    func setupHorizontalLine() {
        view.addSubview(horiztonalLine)
        horiztonalLine.translatesAutoresizingMaskIntoConstraints = false
        horiztonalLine.topAnchor.constraint(equalTo: headerLabel.bottomAnchor).isActive = true
        horiztonalLine.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}

