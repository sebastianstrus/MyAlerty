//
//  ViewController.swift
//  MyAlerty
//
//  Created by Sebastian Strus on 2017-10-11.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    var topView: UIView? = nil
    
    var animator: UIDynamicAnimator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
        NSLog("Proba drukowania")
        // Do any additional setup after loading the view, typically from a nib.
        animator = UIDynamicAnimator(referenceView: self.view);

        
        let width = self.view.bounds.size.width;
        let height = self.view.bounds.size.height;
        
        self.redView.center = CGPoint(x: width/2, y: height * 1.5 + 18);
            
            //CGPoint(x: view.height/2, y: view.width/2)
        
        
        //let frameSize: CGPoint = CGPoint(x: UIScreen.main.bounds.size.width*0.5,y: UIScreen.main.bounds.size.height*0.5)
        
        /*topView = UIView(frame: CGRect(x: 0, y: -100, width: width, height: 120))
        topView?.backgroundColor = UIColor(red: 100.0, green: 130.0, blue: 230.0, alpha: 1.0)
        self.view.addSubview(topView!)*/
        
        

        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func screenTapped(_ sender: UITapGestureRecognizer) {
        let gravity = UIGravityBehavior(items: [redView])
        let direction = CGVector(dx: 0, dy: -0.3)
        gravity.gravityDirection = direction
        
        //let collision = UICollisionBehavior(items: [redView, topView!])



        animator?.addBehavior(gravity)
        //animator?.addBehavior(collision)
        if (self.redView.frame.origin.y < self.view.frame.origin.y) {
            //gravity.removeItem(redView)
            //animator?.removeBehavior(gravity)
            
            NSLog("Mijanie srodkow")

        }
    }

}

