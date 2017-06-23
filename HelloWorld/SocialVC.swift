//
//  SocialVC.swift
//  HelloWorld
//
//  Created by admin on 6/21/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class SocialVC: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.estimatedRowHeight =   400
        self.tableview.rowHeight = UITableViewAutomaticDimension
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     }
    
    
      func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 6
    }
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        var height:CGFloat = 0
         switch indexPath.row {
        case 0:
            
            height = 414
             break
          case 1:
             height = 140
              break
          case 2:
             height = 320
             break
          case 3:
             height = 300
            break
          case 4:
             height = 200
            break
          case 5:
             height = 400
            break
          default:
            break
        }
        
        
        
        
        return height
        
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
          return 300
        
    }
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         var identifire:String = ""
        
        switch indexPath.row {
        case 0:
            identifire = "header"
         self.tableview.register((UINib(nibName:"Header",bundle:nil)), forCellReuseIdentifier:"header")
            
            break
 
        case 1:
             identifire = "linkedInCll"
             self.tableview.register((UINib(nibName:"Linkedin",bundle:nil)), forCellReuseIdentifier:"linkedInCll")
              break
            
        case 2:
            identifire = "FacebookTable"
       self.tableview.register((UINib(nibName:"FacebookTbl",bundle:nil)), forCellReuseIdentifier:"FacebookTable")
            break
            
        case 3:
            identifire = "InstagramCll"
       self.tableview.register((UINib(nibName:"InstagramCll",bundle:nil)), forCellReuseIdentifier:"InstagramCll")
        break
        case 4:
            identifire = "TwitterCll"
            
            self.tableview.register((UINib(nibName:"TwitterCll",bundle:nil)), forCellReuseIdentifier:"TwitterCll")
        break
        case 5:
            identifire = "FooterCll"
            
            self.tableview.register((UINib(nibName:"FooterCll",bundle:nil)), forCellReuseIdentifier:"FooterCll")
            
            break
            
        default:
            break
        }
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath)
        
        
        return cell
    }
    
    
}
