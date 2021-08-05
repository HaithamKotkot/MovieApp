//
//  MovieHomeScreenViewModel.swift
//  MoviesApp
//
//  Created by Haitham Mohamed on 03/07/2021.
//

import Foundation

class MovieHomeScreenViewModel {
    
    var movies = Box([Movie]())
    
    init() {
        getMovies()
    }
    
    private func getMovies() {
        Networking.shared.getData(apiUrl: Constants.getMoviesApi()) { [weak self] (response: Movies?) in
//            print("first moview = \(response?.all.first?.title)")
            guard let self = self, let allMovies = response else {return}
            self.movies.value = allMovies.all
        }
    }
}
