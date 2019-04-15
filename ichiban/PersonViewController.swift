//
//  PersonViewController.swift
//  ichiban
//
//  Created by Ben Huggins on 4/15/19.
//  Copyright © 2019 Alex Lundquist. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    
    
    let data: [PersonModel] = [PersonModel(image: #imageLiteral(resourceName: "MockingSpongebob"), name: "Mocking Spongebob"),
                             PersonModel(image: #imageLiteral(resourceName: "Drake"), name: "Drake"),
                             PersonModel(image: #imageLiteral(resourceName: "DatBoi"), name: "Dat boi"),
                             PersonModel(image: #imageLiteral(resourceName: "ExpandingBrain"), name: "Expanding Brain")]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self as? UICollectionViewDataSource
        collectionView.delegate = self as? UICollectionViewDelegate
        collectionView.register(UINib.init(nibName: "PersonCell", bundle: nil), forCellWithReuseIdentifier: "PersonCell")
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonCell", for: indexPath) as! PersonCell
        cell.configure(with: data[indexPath.row])
        return cell
    }

}
