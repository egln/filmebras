//
//  PopularCollectionViewCell.swift
//  Filmebrás
//
//  Created by egln on 11/07/22.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(title: String, image: UIImage){
        titleLabel.text = title
        self.image.image = image
    }
    
}
