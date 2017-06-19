//
//  ParallexVC.swift
//  HelloWorld
//
//  Created by admin on 6/19/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ParallexVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addBottomSheetView()

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

  func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
func addBottomSheetView() {
    // 1- Init bottomSheetVC
    let bottomSheetVC = ParallexChildVC()
    
    // 2- Add bottomSheetVC as a child view
    self.addChildViewController(bottomSheetVC)
    self.view.addSubview(bottomSheetVC.view)
    bottomSheetVC.didMove(toParentViewController: self)
    
    // 3- Adjust bottomSheet frame and initial position.
    let height = view.frame.height
    let width  = view.frame.width
    //bottomSheetVC.view.frame = CGRect(0, view.frame.maxY, width, height)
    
    
    
    
    
     bottomSheetVC.view.frame    = CGRect(x: 0, y: view.frame.maxY, width: width, height: height)
    
    
    
    
    
    }}
