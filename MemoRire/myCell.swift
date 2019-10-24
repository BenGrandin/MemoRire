//
//  myCell.swift
//  MemoRire
//
//  Created by Du Halgouet Melec on 23/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class myCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
           super.awakeFromNib()
    }
    
    public func configure(with image: String) {
        self.imageView.image = UIImage(named: image)
    }
}
