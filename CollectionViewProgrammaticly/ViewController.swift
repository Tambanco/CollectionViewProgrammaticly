//
//  ViewController.swift
//  CollectionViewProgrammaticly
//
//  Created by tambanco 🥳 on 12.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var headerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeView()
    }

    private func initializeView() {
        headerView = UIView()
        headerView.backgroundColor = #colorLiteral(red: 0.2941176471, green: 0.6431372549, blue: 0.9647058824, alpha: 1)
        self.view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        
    }

}

