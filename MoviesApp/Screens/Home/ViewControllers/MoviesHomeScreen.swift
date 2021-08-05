//
//  ViewController.swift
//  MoviesApp
//
//  Created by Haitham Mohamed on 03/07/2021.
//

import UIKit
import Kingfisher

class MoviesHomeScreen: UITableViewController {

    private let viewModel = MovieHomeScreenViewModel()
    private var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.estimatedRowHeight = 88.0
        self.tableView.rowHeight = UITableView.automaticDimension
        viewModel.movies.bind { [weak self] (movies) in
            guard let self = self else {return}
            self.movies = movies
            self.tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MovieTableViewCell
        cell.title.text = movies[indexPath.row].title
        cell.releaseDate.text = movies[indexPath.row].releaseDate
        cell.votes.text = "\(movies[indexPath.row].voteCount ?? 0)"
        cell.rating.text = "\(movies[indexPath.row].voteAverage ?? 0)"
        Helper.loadImage(imageView: cell.posterImage, urlString: movies[indexPath.row].posterPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: Constants.movieDetailsSegue, sender: movies[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let movieDetailsViewController = segue.destination as? MovieDetalsViewController, let movie = sender as? Movie {
            movieDetailsViewController.movie = movie
        }
    }
}

