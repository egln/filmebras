//
//  FeaturedViewController+UICollectionViewDataSource.swift
//  Filmebrás
//
//  Created by egln on 12/07/22.
//

import UIKit
extension FeaturedViewController: UICollectionViewDataSource {
    
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
            
            let titulo: String = nowPlayingMovies[indexPath.item].title
            cell?.titleLabel.text = titulo
            cell?.dateLabel.text = String(nowPlayingMovies[indexPath.item].releaseDate.prefix(4))
            cell?.imageView.image = UIImage(named: nowPlayingMovies[indexPath.item].poster)
            return cell ?? UICollectionViewCell()
            
        }
        
        return UICollectionViewCell()
        }
    
    
    
    
    
    
    
}
