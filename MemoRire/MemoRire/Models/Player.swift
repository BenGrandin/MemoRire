//
//  Player.swift
//  MemoRire
//
//  Created by Grandin Benjamin on 22/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class Player: NSObject {
    var name : String = ""
    var password:String = ""
    var highscores = ["easy": 0,
    "medium": 0,
    "hard": 0]
    
    init(name: String, password: String){
        self.name = name
        self.password = password
    }
}

