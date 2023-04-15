//
//  ViewController.swift
//  NannyNotes
//
//  Created by Suzie on 4/13/23.
//

import UIKit

class ViewController: UIViewController {
    let headerLabel = HeaderLabel()
    let line = HorizontalLine()
    let childTV = ChildrenTV()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        title = "Home"
        print("hello")
        setupHeader()
        setupLine()
        setupTV()
    }
    
    func setupHeader() {
        view.addSubview(headerLabel)
        headerLabel.setupLabel(title: "Hello Sarah")
        
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        headerLabel.heightAnchor.constraint(equalToConstant: 50 ).isActive = true
        headerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        headerLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    func setupLine() {
        view.addSubview(line)
        line.translatesAutoresizingMaskIntoConstraints = false
        line.topAnchor.constraint(equalTo: headerLabel.bottomAnchor).isActive = true
        line.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        line.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
    }
    
    func setupTV() {
        view.addSubview(childTV)
        childTV.backgroundColor = .red//why doesn't this show
        childTV.translatesAutoresizingMaskIntoConstraints = false
        childTV.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 5).isActive = true
        childTV.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
//        childTV.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        childTV.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        childTV.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}

