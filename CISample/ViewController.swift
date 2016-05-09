//
//  ViewController.swift
//  CISample
//
//  Created by faifo on 5/4/16.
//  Copyright © 2016 od. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var background : UIView?
    var popUp : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRectMake(0, 0, 100, 100)
        popUp = UIView(frame: frame)
        popUp?.backgroundColor = UIColor.greenColor()
        print("ok")
        // sua cai bo me gi day
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickButton(sender: AnyObject) {
        
        
    }
    
    private func basicAnimation() {
        let animation = POPBasicAnimation.defaultAnimation()
    }

}

