//
//  Constant.swift
//  MemoRire
//
//  Created by Grandin Benjamin on 22/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class Variables: NSObject {
    
    static var highscore: [String:Player] =
        ["easy": Player(name:"toto",password: "1"),
        "medium": Player(name:"toto",password: "1"),
        "hard": Player(name:"toto",password: "1")]
}
