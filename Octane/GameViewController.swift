//
//  GameViewController.swift
//  Octane
//
//  Created by Laikh Tewari on 10/24/15.
//  Copyright © 2015 Laikh Tewari. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var gameScreen: UIView!
    let myScreen = UIScreen.mainScreen().bounds
    @IBOutlet weak var player1: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.player1.setVelocities()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        let touchLocation = touches.first?.locationInView(self.gameScreen)
        if touchLocation?.x >= self.myScreen.height/2
        {
            print("press on right")
        }
        else
        {
            print("press on left")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
