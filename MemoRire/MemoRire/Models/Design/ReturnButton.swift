//
//  ReturnButton.swift
//  MemoRire
//
//  Created by Jisseau Damien on 23/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class ReturnButton: UIButton {
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setTitleColor(.red, for: .normal)
    }
}
