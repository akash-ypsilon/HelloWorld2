//
//  CollectionVC.swift
//  HelloWorld
//
//  Created by admin on 6/15/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class CollectionVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UIScrollViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nonScrollingView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.scrollView.delegate = self
        //self.nonScrollingView.isHidden = true
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 //MARK: Collection View Delegates
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
    return 10
    }
     public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
    
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell",
                                                      for: indexPath)
    
    return cell
    
    
    }
    
    
     public func numberOfSections(in collectionView: UICollectionView) -> Int{
    
    
    
    
    
    return 1
    
    }
    
 //MARK: - ScrollView Delegates
 public func scrollViewDidScroll(_ scrollView: UIScrollView) {
    
    self.nonScrollingView.isHidden = false
        
       /* if(scrollView.decla){
        
        
        
           // self.nonScrollingView.isHidden = true

        
        }*/
    
    
    }
    
    

}
