//
//  NowPlayingCollectionViewCell.swift
//  Filmebrás
//
//  Created by egln on 11/07/22.
//

import UIKit

class NowPlayingCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    static let cellIdentifier = "nowPlayingCell"
    
    func setup(title: String, year: String, image: UIImage){
        titleLabel.text = title
        dateLabel.text = year
        self.imageView.image = image
    }
    
    
}
