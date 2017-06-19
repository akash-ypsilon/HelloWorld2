//
//  Profile.swift
//  HelloWorld
//
//  Created by admin on 6/13/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//
import Foundation

class Profile {
    var name = ""
    var segments = [Segment]()
    var duration:String = ""
     static let sharedInstance = Profile()
    init() {
        // Create Main Segment
        let segment = Segment(type: .Main)
        
        // Add Segment to Profile
        self.segments.append(segment)
    }
    
}
