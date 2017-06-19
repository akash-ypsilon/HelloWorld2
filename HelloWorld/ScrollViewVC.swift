//
//  ScrollViewVC.swift
//  HelloWorld
//
//  Created by admin on 6/14/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ScrollViewVC: UIViewController {

    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
     // self.gone()
        
         }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func  gone() {
    
    
    
    
    let heightConstraint = NSLayoutConstraint(item: self.viewTwo,
    attribute: NSLayoutAttribute.height,
    relatedBy: NSLayoutRelation.equal,
    toItem: self.viewThree,
    attribute: NSLayoutAttribute.height,
    multiplier: 0, constant: 0)
    self.view.addConstraint(heightConstraint)
    
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
