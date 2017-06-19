//
//  ControllVC.swift
//  HelloWorld
//
//  Created by admin on 6/17/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ControllVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    
 
        var obj:ModelVC = ModelVC()
        
        obj.name  = "a"
        obj.rating = 0
        
        
        var objA:ModelVC = ModelVC()
        
        objA.name  = "b"
        objA.rating = 1
        
        var objB:ModelVC = ModelVC()
        
        objB.name  = "c"
        objB.rating = 2
        
        var objc:ModelVC = ModelVC()
        
        objc.name  = "d"
        objc.rating = 3
        
        
        var objArr = [] as NSMutableArray
        
        
        objArr.add(obj)
        objArr.add(objA)
        objArr.add(objB)
        objArr.add(objc)
    
        
        
        ModelVC.sharedInstance.objArr = objArr as! [ModelVC]
        
        print(objArr)
        
 
        for ele in ModelVC.sharedInstance.objArr.map ({$0.name == "d"}){
        
          
             if ele == true {
            
//               ModelVC.sharedInstance.objArr[$0.name]
            
            }
            
            
        
        
        }
        
//        for var ele in ModelVC.sharedInstance.objArr.map({$0.name , ""}){
//        
//        
//        
//        
//        
//        
//        }

       // var users = ModelVC.sharedInstance.objArr.filter { $0.name.contains(where: { objA.name = "" }) }

        //ModelVC.sharedInstance.objArr[0]
        
        
        
    
    
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

}
