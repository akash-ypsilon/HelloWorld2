//
//  TableViewCellWithCollection.swift
//  HelloWorld
//
//  Created by admin on 6/16/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class TableViewCellWithCollection: UITableViewCell {

    @IBOutlet weak var collectionview: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.collectionview.delegate = self
        self.collectionview.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension TableViewCellWithCollection: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        //What is this CustomCollectionCell? Create a CustomCell with SubClass of UICollectionViewCell
        //Load images w.r.t IndexPath
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
     }
}
