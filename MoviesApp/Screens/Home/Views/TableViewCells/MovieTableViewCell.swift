//
//  MovieTableViewCell.swift
//  MoviesApp
//
//  Created by Haitham Mohamed on 03/07/2021.
//

import Foundation
import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var votes: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
}
