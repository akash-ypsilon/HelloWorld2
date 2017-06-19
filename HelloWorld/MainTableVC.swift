//
//  MainTableVC.swift
//  HelloWorld
//
//  Created by admin on 6/16/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class MainTableVC: UITableViewController {

    @IBOutlet var tableview: UITableView!
     override func viewDidLoad() {
        super.viewDidLoad()
         tableview.estimatedRowHeight =   200
        self.tableview.rowHeight = UITableViewAutomaticDimension
//        tableview.setNeedsLayout()
//        tableview.layoutIfNeeded()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var identifire:String = ""
 
        switch indexPath.row {
        case 0:
            identifire = "cell0"

           break
            
        case 1:
             identifire = "cell1"
              break
            
        case 2 :
            identifire = "cell2"
            break
        case 3 :
            identifire = "cell3"
            break
        case 4 :
            identifire = "cell4"
            break
            
            
            
            
        default:
            break
                }
            
            
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath)

 
        return cell
    }
 
      func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
   /*     switch indexPath.row {
        case 0:
            
            break
            
        case 1:
             break
            
        case 2 :
             break
        case 3 :
             break
        case 4 :
             break
            
            
            
            
        default:
            break
        }
        
        */
        
        
        
        return UITableViewAutomaticDimension
        
        
     }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
