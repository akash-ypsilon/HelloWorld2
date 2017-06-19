//
//  ParallexChildVC.swift
//  HelloWorld
//
//  Created by admin on 6/19/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ParallexChildVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UIPanGestureRecognizer.init(target: self, action: #selector(ParallexChildVC.panGesture))
        view.addGestureRecognizer(gesture)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
      func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        prepareBackgroundView()
    }

      func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.3) { [weak self] in
            var frame = self?.view.frame
            let yComponent = UIScreen.main.bounds.height - 200
           // self?.view.frame = CGRect(0, yComponent, frame!.width, frame!.height)
            
            
            
            
          self?.view.frame    = CGRect(x: 0, y: yComponent, width: (frame?.width)!, height: (frame?.height)!)
            
            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func prepareBackgroundView(){
        let blurEffect = UIBlurEffect.init(style: .dark)
        let visualEffect = UIVisualEffectView.init(effect: blurEffect)
        let bluredView = UIVisualEffectView.init(effect: blurEffect)
        bluredView.contentView.addSubview(visualEffect)
        
        visualEffect.frame = UIScreen.main.bounds
        bluredView.frame = UIScreen.main.bounds
        
        view.insertSubview(bluredView, at: 0)
    }
    
    
    func panGesture(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        let y = self.view.frame.minY
       // self.view.frame = CGRect(0, y + translation.y, view.frame.width, view.frame.height)
       // recognizer.setTranslation(0, in: self.view)
        
        
        
         self.view.frame    = CGRect(x: 0, y: y + translation.y, width: (self.view.frame.width), height: (self.view.frame.height))
        
         //recognizer.setTranslation(0, in: self.view)

        recognizer.setTranslation(CGPoint(x: 0, y: 0), in: self.view)
        
        
    }

}
