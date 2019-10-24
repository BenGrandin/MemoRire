//
//  TitleLabel.swift
//  MemoRire
//
//  Created by Jisseau Damien on 23/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class TitleLabel: UILabel {
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        frame.size = CGSize(width: 150, height: 45)
        textColor = .systemPink
        font = UIFont.systemFont(ofSize: 30.0, weight: .semibold)
        textAlignment = .center
    }
}
