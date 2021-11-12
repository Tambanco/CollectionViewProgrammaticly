//
//  NumbersCollectionViewDelegateAndDataSource.swift
//  CollectionViewProgrammaticly
//
//  Created by tambanco 🥳 on 12.11.2021.
//

import UIKit

class NumbersCollectionViewDelegateAndDataSource: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {

    let imageURLs: [String] = ["https://images.unsplash.com/photo-1509803874385-db7c23652552?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjg0Mjk0fQ","https://images.unsplash.com/photo-1472190649224-495422e1b602?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjg0Mjk0fQ","https://images.unsplash.com/photo-1507608869274-d3177c8bb4c7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjg0Mjk0fQ","https://images.unsplash.com/photo-1514477917009-389c76a86b68?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjg0Mjk0fQ","https://images.unsplash.com/photo-1501630834273-4b5604d2ee31?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjg0Mjk0fQ","https://images.unsplash.com/photo-1548268770-66184a21657e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjg0Mjk0fQ","https://images.unsplash.com/photo-1528872042734-8f50f9d3c59b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjg0Mjk0fQ","https://images.unsplash.com/photo-1501630834273-4b5604d2ee31?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjg0Mjk0fQ","https://images.unsplash.com/photo-1504608524841-42fe6f032b4b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjg0Mjk0fQ"]
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageURLs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! NumbersCollectionViewCell
        cell.label.text = imageURLs[indexPath.row]
        return cell
    }
    
}
