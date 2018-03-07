//
//  DirectionType.swift
//  KSAnimationDemo
//
//  Created by Yudiz on 27/02/18.
//  Copyright © 2018 Yudiz. All rights reserved.
//

import UIKit

//MARK:- DirectionType
enum AnimationDirectionType: Int {
    
    case top
    case bottom
    case right
    case left
    
    var isVertical: Bool {
        switch self {
        case .top, .bottom:
            return true
        default:
            return false
        }
    }
    
    var isPositive: CGFloat {
        switch self {
        case .top, .left:
            return -1
        default:
            return 1
        }
    }
    
    //Random direction.
    static func random() -> AnimationDirection {
        let rawValue = Int(arc4random_uniform(4))
        return AnimationDirection(rawValue: rawValue)!
    }
}
