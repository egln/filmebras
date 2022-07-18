//
//  ViewController.swift
//  Filmebrás
//
//  Created by egln on 05/07/22.
//

import UIKit

class FeaturedViewController: UIViewController {
    
    
    var popularMovies: [Movie] = [] //Movie.popularMovies()
    let nowPlayingMovies: [Movie] = [] //Movie.nowPlayingMovies()
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var nowPlayingCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popularCollectionView.dataSource = self
        nowPlayingCollectionView.dataSource = self
        popularCollectionView.delegate = self
        nowPlayingCollectionView.delegate = self
        
        Task{
            self.popularMovies = await Movie.popularMoviesAPI()
            self.popularCollectionView.reloadData()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController {
            let movie = sender as? Movie
            destination.movie = movie
        }
        
    }
    
   
}

