//
//  ViewController.swift
//  Filmebrás
//
//  Created by egln on 05/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDataSource {
    
    
    let popularMovies = Movie.popularMovies()
    let nowPlayingMovies = Movie.nowPlayingMovies()
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var nowPlayingCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popularCollectionView.dataSource = self
        nowPlayingCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == popularCollectionView {
            return popularMovies.count
        } else if collectionView == nowPlayingCollectionView {
            return nowPlayingMovies.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == popularCollectionView{
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell
            
            cell?.titleLabel.text = popularMovies[indexPath.item].title
            cell?.image.image = UIImage(named: popularMovies[indexPath.item].backdrop)
            
            return cell ?? UICollectionViewCell()
        }
            
        else if collectionView == nowPlayingCollectionView {
            
            let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: "nowPlayingCell", for: indexPath) as? NowPlayingCollectionViewCell
            
            cell?.titleLabel.text = nowPlayingMovies[indexPath.item].title
            cell?.dateLabel.text = nowPlayingMovies[indexPath.item].releaseDate
            cell?.image.image = UIImage(named: nowPlayingMovies[indexPath.item].poster)
            return cell ?? UICollectionViewCell()
        }
        
        return UICollectionViewCell()
        }
}

