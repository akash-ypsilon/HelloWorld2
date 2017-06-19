//
//  CircleViewController.swift
//  HelloWorld
//
//  Created by admin on 6/17/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {
    @IBOutlet weak var circleParentView: UIView!

    @IBOutlet weak var seekBar: UISlider!
    
    
    
    var finalCX = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        seekBar.maximumValue = circleParentView.layer.frame.size/2
       // seekBar.minimumValue =20
        
        self.addCircle(radius: 20)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    func addCircle(radius:Int){
     
        var finalRadius = radius
        var cx =  (circleParentView.layer.frame.size.width/2 )
        var cy =  (circleParentView.layer.frame.size.height/2 )
        
        if finalCX == 0 {
        
            
                finalCX = Int(cx) - 5
        
            seekBar.maximumValue = Float(finalCX)

        
        
        
        
        }
//        if(radius >  finalCX){
//            
//            finalRadius = finalCX
//
//        }
       // /circleParentView.layer.frame.origin.y
//       circleParentView.layer.frame.size.width
//        circleParentView.layer.frame.size.height
     let circlePath = UIBezierPath(arcCenter: CGPoint(x: cx,y: cy), radius: CGFloat(finalRadius), startAngle: CGFloat(0), endAngle:CGFloat(M_PI * 2), clockwise: true)
     
     let shapeLayer = CAShapeLayer()
     shapeLayer.path = circlePath.cgPath
     
     //change the fill color
     shapeLayer.fillColor = UIColor.clear.cgColor
     //you can change the stroke color
     shapeLayer.strokeColor = UIColor.red.cgColor
     //you can change the line width
     shapeLayer.lineWidth = 3.0
        
        
     
     circleParentView.layer.addSublayer(shapeLayer)
     
     
}

    @IBAction func sliderVal(_ sender: UISlider) {
        
        var currentValue = Int(sender.value)
        print("Slider changing to \(currentValue) ?")
        
        circleParentView.layer.sublayers?.remove(at: 0)
       
        self.addCircle(radius: currentValue)


    }
    
    override func viewDidLayoutSubviews() {
        print(self.circleParentView.frame.size)
    }
}
