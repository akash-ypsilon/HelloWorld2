//
//  TestController.swift
//  HelloWorld
//
//  Created by admin on 6/14/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
import CoreData
class TestController: UIViewController {
    var people: [NSManagedObject] = []

    @IBOutlet weak var brn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func btnClicked(_ sender: Any) {
        
        
        
        print("")
        Profile.sharedInstance.duration = "x"
        Profile.sharedInstance.name = "x"
        
        
        
        
        Profile.sharedInstance.segments = [Segment.init(type: .Main)]
        
        print(Profile.sharedInstance.duration)
        print(Profile.sharedInstance.name)
        
         print(Profile.sharedInstance.segments.capacity)

        
        var x = Segment(type: .Main)
        
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        if #available(iOS 10.0, *) {
            
            
            //Core Data Set & GEt
            let managedContext =
                appDelegate.persistentContainer.viewContext
            let entity =
                NSEntityDescription.entity(forEntityName: "Person",
                                           in: managedContext)!
            
            let person = NSManagedObject(entity: entity,
                                         insertInto: managedContext)
            
            
            person.setValue("a"  , forKeyPath: "name")
            do {
                try managedContext.save()
                people.append(person)
            } catch let error as NSError {
                print("Could not save. \(error), \(error.userInfo)")
            }
            let fetchRequest =
                NSFetchRequest<NSManagedObject>(entityName: "Person")
            
            //3
            do {
                people = try managedContext.fetch(fetchRequest)
                print(people[0].value(forKey: "name"))
            } catch let error as NSError {
                print("Could not fetch. \(error), \(error.userInfo)")
            }
        } else {
            // Fallback on earlier versions
        }
        
       

        
        
    }
}
