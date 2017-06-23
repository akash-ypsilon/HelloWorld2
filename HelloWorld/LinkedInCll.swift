//
//  LinkedInCll.swift
//  HelloWorld
//
//  Created by admin on 6/21/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class LinkedInCll: UITableViewCell   {
    @IBOutlet weak var linkedInCollection: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.linkedInCollection.register(UINib(nibName: "LinkedInCll", bundle: nil), forCellWithReuseIdentifier: "linkedInCollectionCell")
        
        
        self.linkedInCollection.dataSource = self
        self.linkedInCollection.delegate = self
        

        // Initialization code
    }
   }
extension LinkedInCll: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //
        // let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "linkedinCell", for: indexPath)
        //What is this CustomCollectionCell? Create a CustomCell with SubClass of UICollectionViewCell
        //Load images w.r.t IndexPath
        let cell : LinkedInCollectinCell = collectionView.dequeueReusableCell(withReuseIdentifier: "linkedInCollectionCell", for: indexPath) as! LinkedInCollectinCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
