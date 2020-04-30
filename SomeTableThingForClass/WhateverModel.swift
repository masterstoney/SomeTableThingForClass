//
//  WhateverModel.swift
//  SomeTableThingForClass
//
//  Created by Tendaishe Gwini on 4/30/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class WhateverModel {
    internal init(name: String, type: String, date: String, coolFactor: Int) {
        self.name = name
        self.type = type
        self.date = date
        self.coolFactor = coolFactor
    }
    
    //MARK: Properties
    
    var name: String
    var type: String
    var date: String
    var coolFactor: Int
    
}
