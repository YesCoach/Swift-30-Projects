//
//  TableViewController.swift
//  GoodAsOldPhones
//
//  Created by 박태현 on 2021/12/23.
//

import UIKit

class TableViewController: UIViewController {
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    private let products: [Product] = [
        Product(name: "1907 Wall Set", cellImageName: "image-cell1", fullImageName: "phone-fullscreen1"),
        Product(name: "1921 Dial Phone", cellImageName: "image-cell2", fullImageName: "phone-fullscreen2"),
        Product(name: "1937 Desk Set", cellImageName: "image-cell3", fullImageName: "phone-fullscreen3"),
        Product(name: "1984 Moto Portable", cellImageName: "image-cell4", fullImageName: "phone-fullscreen4")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureViewController()
        setUILayout()
    }

    private func configureViewController() {
        self.title = "Products"
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.cellID)
        tableView.rowHeight = 100
    }

    private func setUILayout() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.cellID, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        cell.configure(product: products[indexPath.row])
        return cell
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = products[indexPath.row]
        let detailViewController = DetailViewController()
        detailViewController.configureWithProduct(product)
        navigationController?.pushViewController(detailViewController, animated: false)
    }
}
