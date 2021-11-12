//
//  ViewController.swift
//  CollectionViewProgrammaticly
//
//  Created by tambanco 🥳 on 12.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var headerView: UIView!
    private var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeView()
    }

    private func initializeView() {
        headerView = UIView()
        headerView.backgroundColor = #colorLiteral(red: 0.2941176471, green: 0.6431372549, blue: 0.9647058824, alpha: 1)
        self.view.addSubview(headerView)
        
        titleLabel = UILabel()
        titleLabel.text = "Numbers"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "Arial", size: 22)
        titleLabel.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        headerView.addSubview(titleLabel)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.4).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.5).isActive = true
    }
}

