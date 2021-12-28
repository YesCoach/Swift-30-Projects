//
//  TableViewCell.swift
//  GoodAsOldPhones
//
//  Created by 박태현 on 2021/12/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let cellID = "CellID"
    private var productImageView = UIImageView()
    private var productNameLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUpLayout() {
        self.addSubview(productImageView)
        self.addSubview(productNameLabel)
        productImageView.translatesAutoresizingMaskIntoConstraints = false
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            productImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            productImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 8),
            productImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.3),
            productNameLabel.leadingAnchor.constraint(equalTo: productImageView.trailingAnchor, constant: 8),
            productNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 8),
            productNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }

    func configure(product: Product) {
        productImageView.image = UIImage(named: product.cellImageName)
        productNameLabel.text = product.name
    }
}
