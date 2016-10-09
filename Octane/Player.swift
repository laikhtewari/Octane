//
//  Player.swift
//  Octane
//
//  Created by Laikh Tewari on 10/24/15.
//  Copyright © 2015 Laikh Tewari. All rights reserved.
//

import UIKit

class Player: UIView {
    
    var xVelocity: CGFloat!
    var yVelocity: CGFloat!
    
    func move ()
    {
        self.center.x += xVelocity
        self.center.y += yVelocity
    }
    
    func setVelocities()
    {
        self.xVelocity = CGFloat(arc4random_uniform(21)) - 10
        self.yVelocity = sin(acos(xVelocity/10))*10
        print("X Velocity: \(xVelocity) and Y Velocity: \(yVelocity)")
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
