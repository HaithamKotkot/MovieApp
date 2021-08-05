//
//  Helper.swift
//  MoviesApp
//
//  Created by Haitham Mohamed on 05/07/2021.
//

import Foundation
import UIKit
import Kingfisher

class Helper {
    
    static func loadImage(imageView: UIImageView, urlString: String?) {
        if let posterPath = urlString , let posterUrl = URL(string: Constants.movieBaseImageurl + posterPath) {
            imageView.kf.indicatorType = .activity
            imageView.kf.setImage(with: posterUrl, placeholder: nil, options: [
                                         .scaleFactor(UIScreen.main.scale),
                                         .transition(.fade(1)),
                                         .cacheOriginalImage
                                     ], completionHandler: nil)
        }
    }
}
