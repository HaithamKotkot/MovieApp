//
//  Networking.swift
//  MoviesApp
//
//  Created by Haitham Mohamed on 03/07/2021.
//

import Foundation
import Alamofire

class Networking {

    private init(){}
    
    static let shared: Networking = {
        return Networking()
    }()
    
    func getData<T: Codable>(apiUrl: String, compleation: ((T?) -> Void)? = nil) {
        AF.request(apiUrl).responseDecodable(of: T.self) { (response) in
            if let movies = response.value {
                compleation?(movies)
            } else {
                compleation?(nil)
            }
        }
    }
}
