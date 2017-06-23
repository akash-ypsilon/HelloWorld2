//
//  FacebookCell.swift
//  HelloWorld
//
//  Created by admin on 6/21/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class FacebookCell: UITableViewCell {

    @IBOutlet weak var fbTableview: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.fbTableview.delegate = self
        self.fbTableview.dataSource = self
      self.fbTableview.register((UINib(nibName:"FacebookCell",bundle:nil)), forCellReuseIdentifier:"FbTableViewCell")
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension FacebookCell: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
        
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell : FbTableViewCell = tableView.dequeueReusableCell(withIdentifier: "FbTableViewCell", for: indexPath) as! FbTableViewCell
 
       
        
        
        
        return cell
    }
    
    
}
