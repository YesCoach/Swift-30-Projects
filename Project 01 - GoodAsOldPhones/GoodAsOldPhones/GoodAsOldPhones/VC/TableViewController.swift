//
//  TableViewController.swift
//  GoodAsOldPhones
//
//  Created by 박태현 on 2021/12/23.
//

import UIKit

class TableViewController: UIViewController {

    let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Products"
        // Do any additional setup after loading the view.
        setUILayout()
    }

    func setUILayout() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8).isActive = true
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension TableViewController: UITableViewDelegate {
    
}
