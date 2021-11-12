//
//  NumbersCollectionViewDelegateAndDataSource.swift
//  CollectionViewProgrammaticly
//
//  Created by tambanco 🥳 on 12.11.2021.
//

import UIKit

class NumbersCollectionViewDelegateAndDataSource: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {

    let numbers: [String] = ["one", "two", "three"]
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! NumbersCollectionViewCell
        cell.label.text = numbers[indexPath.row]
        return cell
    }
    
}
