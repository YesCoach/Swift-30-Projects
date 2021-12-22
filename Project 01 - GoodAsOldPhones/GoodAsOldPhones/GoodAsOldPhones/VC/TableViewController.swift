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

    let products: [Product] = [
        Product(name: "1907 Wall Set", cellImageName: "image-cell1", fullImageName: "phone-fullscreen1"),
        Product(name: "1921 Dial Phone", cellImageName: "image-cell2", fullImageName: "phone-fullscreen2"),
        Product(name: "1937 Desk Set", cellImageName: "image-cell3", fullImageName: "phone-fullscreen3"),
        Product(name: "1984 Moto Portable", cellImageName: "iamge-cell4", fullImageName: "phone-fullscreen4")
    ]

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
        return products.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension TableViewController: UITableViewDelegate {
    
}
