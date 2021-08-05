//
//  Constants.swift
//  MoviesApp
//
//  Created by Haitham Mohamed on 03/07/2021.
//

import Foundation

class Constants {
    static let apikey = "fba73f6ccbaad2fce8d8015333307db7"
    static let moviesApiBaseUrl = "https://api.themoviedb.org/3/"
    static let getMoviesApi = {
        return moviesApiBaseUrl + "discover/movie?api_key=" + apikey + "&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate"
    }
    static let movieBaseImageurl = "https://image.tmdb.org/t/p/w500"
    static let movieDetailsSegue = "movieDetails"
}
