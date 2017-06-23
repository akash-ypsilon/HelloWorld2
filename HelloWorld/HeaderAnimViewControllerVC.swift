//
//  HeaderAnimViewControllerVC.swift
//  HelloWorld
//
//  Created by admin on 6/20/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class HeaderAnimViewControllerVC: UIViewController {
    @IBOutlet weak var headerTransactionView: UIView!

    @IBOutlet weak var centreIV: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        headerTransactionView.frame.origin.x -= headerTransactionView.frame.width
 
       
        
        
        
    }

    
    
    private func animationOpen(viewAnimation: UIView) {
        UIView.animate(withDuration: 2, animations: {
           // viewAnimation.frame.origin.x -= viewAnimation.frame.width
        }) { (_) in
            UIView.animate(withDuration: 2, delay: 1, options: [.curveEaseIn], animations: {
                viewAnimation.frame.origin.x += viewAnimation.frame.width
            })
            
        }
    }
    
    private func animationClose(viewAnimation: UIView) {
        UIView.animate(withDuration: 2, animations: {
            // viewAnimation.frame.origin.x -= viewAnimation.frame.width
        }) { (_) in
            UIView.animate(withDuration: 2, delay: 1, options: [.curveEaseIn], animations: {
                viewAnimation.frame.origin.x -= viewAnimation.frame.width
            })
            
        }
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func viewOpen(_ sender: Any) {
        
        self.animationOpen(viewAnimation:headerTransactionView)
        UIView.animate(withDuration: 1.0, animations: {
            self.centreIV.transform = CGAffineTransform(rotationAngle: CGFloat(180*M_PI))
        })

        
    }
    
    
    @IBAction func viewClose(_ sender: Any) {
        
        UIView.animate(withDuration: 1.0, animations: {
            self.centreIV.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
        })
        self.animationClose(viewAnimation:headerTransactionView)

        
    }
    
    
    
    
    
 }
