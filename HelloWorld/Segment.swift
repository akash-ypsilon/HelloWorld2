//
//  Segment.swift
//  HelloWorld
//
//  Created by admin on 6/13/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Foundation
enum SegmentType {
    case Main
    case WarmUp
    case CoolDown
}

class Segment {
    var enabled: Bool
    var type: SegmentType
   // var sounds = [Sound]()
    var duration: Double = 300
    
    init(type: SegmentType) {
        self.type = type
        self.enabled = true
    }
    
/*    func soundOfType(type: SoundType) -> Sound? {
        var result: Sound? = nil
        
        for sound in sounds {
            if sound.type == type {
                result = sound
            }
        }
        
        return result
    }
    */
}

