//
//  MovieDetailsViewController.swift
//  MoviesApp
//
//  Created by Haitham Mohamed on 04/07/2021.
//

import Foundation
import UIKit

class MovieDetalsViewController: UIViewController {
    @IBOutlet weak var backdropImage: UIImageView!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var overview: UILabel!
    @IBOutlet weak var votes: UILabel!
    @IBOutlet weak var rating: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
            titleL.text = movie.title
            releaseDate.text = movie.releaseDate
            overview.text = movie.overview
            votes.text = "\(movie.voteCount ?? 0)"
            rating.text = "\(movie.voteAverage ?? 0)"
            Helper.loadImage(imageView: posterImage, urlString: movie.posterPath)
            Helper.loadImage(imageView: backdropImage, urlString: movie.backdropPath)
        }
    }
}
