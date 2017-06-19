//
//  expandingCellVC.swift
//  HelloWorld
//
//  Created by admin on 6/14/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class expandingCellVC: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var cellDescriptors: NSMutableArray!
     override func viewDidLoad() {
        super.viewDidLoad()
        
//loadCellDescriptors()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
   /* func loadCellDescriptors() {
        if let path = NSBundle.mainBundle().pathForResource("CellDescriptor", ofType: "plist") {
            cellDescriptors = NSMutableArray(contentsOfFile: path)
        }
    }
*/
}
