//
//  ViewController.swift
//  Protocol + Delegation
//
//  Created by Jian Yao Ang on 1/4/15.
//  Copyright (c) 2015 Jian Yao Ang. All rights reserved.
//

import UIKit


class ViewController: UIViewController, PromiseMeProtocol {

    @IBOutlet weak var theLabel: UILabel!
    var promiseMe: PromiseMeController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    var timer = NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: Selector("changeTheBackgroundColor"), userInfo: nil, repeats: false)
        
    self.promiseMe = PromiseMeController(delegate: self)
        
    changeThisUILabelText(self.theLabel)
    }

    func changeTheBackgroundColor() {
        
        self.view.backgroundColor = UIColor.blackColor()
    }

    func changeThisUILabelText(theLabel: UILabel) {
        theLabel.text = "Fulfilling PromiseMeProtocol"
        theLabel.textColor = UIColor.whiteColor()
        
    }
}

