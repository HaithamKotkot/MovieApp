//
//  Movie.swift
//  MoviesApp
//
//  Created by Haitham Mohamed on 03/07/2021.
//

import Foundation

struct Movie: Codable {
  let id: Int
  let title: String?
  let posterPath: String?
  let backdropPath: String?
  let overview: String?
  let voteCount: Int?
  let releaseDate: String?
  let voteAverage: Double?
  
  enum CodingKeys: String, CodingKey {
    case id
    case title
    case posterPath = "poster_path"
    case backdropPath = "backdrop_path"
    case voteCount = "vote_count"
    case releaseDate = "release_date"
    case voteAverage = "vote_average"
    case overview
  }
}

struct Movies: Codable {
  let all: [Movie]
  
  enum CodingKeys: String, CodingKey {
    case all = "results"
  }
}
