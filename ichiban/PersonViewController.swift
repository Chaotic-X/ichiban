//
//  PersonViewController.swift
//  ichiban
//
//  Created by Ben Huggins on 4/15/19.
//  Copyright © 2019 Alex Lundquist. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    var data: [PersonModel] = []
    
    func fillMock(){
        data = [PersonModel(image: #imageLiteral(resourceName: "MockingSpongebob"), name: "Mocking Spongebob"),
                PersonModel(image: #imageLiteral(resourceName: "Drake"), name: "Drake"),
                PersonModel(image: #imageLiteral(resourceName: "DatBoi"), name: "Dat boi"),
                PersonModel(image: #imageLiteral(resourceName: "ExpandingBrain"), name: "Expanding Brain")]
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fillMock()
        collectionView.reloadData()
        
        collectionView.dataSource = self
        collectionView.delegate = self

    }
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonCell", for: indexPath) as! PersonCell
        cell.configure(with: data[indexPath.row])
        return cell
    }
    
    private func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        
        switch (indexPath.row)   {
        case 0:
            self.performSegue(withIdentifier: "person1", sender: self)
        case 1:
            self.performSegue(withIdentifier: "box1", sender: self)
        default:
            break
        }
        
    }

}
