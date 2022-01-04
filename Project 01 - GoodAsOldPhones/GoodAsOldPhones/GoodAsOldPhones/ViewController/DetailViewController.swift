//
//  DetailViewController.swift
//  GoodAsOldPhones
//
//  Created by 박태현 on 2022/01/04.
//

import UIKit

class DetailViewController: UIViewController {
    private let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .preferredFont(forTextStyle: .largeTitle)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()

    private let addButton: UIButton = {
        let addButton = UIButton()
        addButton.setTitle("AddCart", for: .normal)
        addButton.setTitleColor(UIColor(named: "white"), for: .normal)
        addButton.titleLabel?.font = .preferredFont(forTextStyle: .title1)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.backgroundColor = .brown
        return addButton
    }()
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUILayout()
    }

    private func setUILayout() {
        view.backgroundColor = .white
        view.addSubview(imageView)
        imageView.addSubview(titleLabel)
        imageView.addSubview(addButton)

        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true

        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        addButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 128).isActive = true
        addButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3).isActive = true
    }

    func configureWithProduct(_ product: Product) {
        titleLabel.text = product.name
        imageView.image = UIImage(named: product.fullImageName)
    }
}
