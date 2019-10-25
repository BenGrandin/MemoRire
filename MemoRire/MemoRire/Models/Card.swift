//
//  Card.swift
//  MemoRire
//
//  Created by Grandin Benjamin on 22/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class Card: UIButton {
    
    var discovered = false
    var found = false
    var image = 0
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setTitle("", for: .normal)
        setBackgroundImage(UIImage(named: "0"), for: .normal)
    }
}
