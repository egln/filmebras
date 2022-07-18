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
            cell?.setup(title: popularMovies[indexPath.item].title, image: UIImage())
            
            let movie = popularMovies[indexPath.item]
            
            Task {
                let imageData = await Movie.downloadImageData(withPath: popularMovies[indexPath.item].backdropPath)
                
                let imagem = UIImage(data: imageData) ?? UIImage()
                cell.setup(title: movie.title, image: imagem)
                
            }
            
            return cell ?? UICollectionViewCell()
        }
        
        else if collectionView == nowPlayingCollectionView {
            
            let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: "nowPlayingCell", for: indexPath) as? NowPlayingCollectionViewCell
            cell?.setup(title:nowPlayingMovies[indexPath.item].title, year: String(nowPlayingMovies[indexPath.item].releaseDate.prefix(4)), image: UIImage(named: nowPlayingMovies[indexPath.item].posterPath) ?? UIImage())
            return cell ?? UICollectionViewCell()
            
        }
        
        return UICollectionViewCell()
        }
    
    
    
    
    
    
    
}
