//
//  ViewController.swift
//  Filmebrás
//
//  Created by egln on 05/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDataSource {
   

    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    @IBOutlet weak var nowPlayingCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popularCollectionView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell
        
        cell?.titleLabel.text = "Título do Filme"
        cell?.image.image = UIImage()
        
        return cell ?? UICollectionViewCell()
    }
    

}

