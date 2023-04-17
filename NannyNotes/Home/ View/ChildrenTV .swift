//
//  ChildrenTv .swift
//  NannyNotes
//
//  Created by Suzie on 4/14/23.
//

import UIKit

class ChildrenTV: UIView {
    let tableView = UITableView()
    let childrenArray = ["Landon", "Alistair", "Jack"]
//    let childrenArray: [Children] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTV()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTV() {
        addSubview(tableView)
        setTVDelegates()
        tableView.rowHeight = 50
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 10.0
        //register cells
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    func setTVDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ChildrenTV: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //how many cells to show
        return childrenArray.count
    }
    
    //which cells would be shown
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        return cell
    }
}
