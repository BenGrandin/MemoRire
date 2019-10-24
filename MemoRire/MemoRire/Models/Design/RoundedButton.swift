//
//  Bouton.swift
//  MemoRire
//
//  Created by Grandin Benjamin on 23/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = .clear
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.green.cgColor
        setTitleColor(.systemTeal, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 26.0)
        setTitle(title(for: .normal)?.uppercased(), for: .normal)
        frame.size = CGSize(width: 132, height: 45)
        contentHorizontalAlignment.self = .center
        //        UIFont.systemFont(ofSize: 26.0)
        //        setTitle("OK", for: .normal)
    }
}
