//
//  PromiseMe.swift
//  Protocol + Delegation
//
//  Created by Jian Yao Ang on 1/4/15.
//  Copyright (c) 2015 Jian Yao Ang. All rights reserved.
//

import Foundation
import UIKit

protocol PromiseMeProtocol {
    func changeThisUILabelText(theLabel: UILabel)
    
    func changeTheBackgroundColor()

}

class PromiseMeController {
    
    var delegate: PromiseMeProtocol
    
    //init is required to create the PromiseMeController class
    init(delegate: PromiseMeProtocol) {
        self.delegate = delegate
    }
}