//
//  Movie.swift
//  MovieTracker
//
//  Created by Lewis Griffin on 8/2/20.
//

import Foundation

struct Movie: Codable, Identifiable, Hashable {
    let movieName: String
    let rating: String
    let description: String
    let image: String
    
    var id: String {
        movieName
    }
    
    static let oldGuard = Movie(movieName: "Old Guard", rating: "⭐️⭐️⭐️⭐️", description: "Four undying warrios who have protected humanity are being targeted for their special abilities.", image: "oldguard")
    static let dni = Movie(movieName: "365 DNI", rating: "⭐️⭐️⭐️", description: "Polish erotic romantic drama.", image: "DNI")
    
    static let allMovies = [oldGuard, dni]
}
