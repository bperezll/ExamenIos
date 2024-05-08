//
//  Movie.swift
//  ExamenIos
//
//  Created by Mañanas on 8/5/24.
//

import Foundation

struct MovieResponse: Decodable {
    let results: [Movie]
    
    enum CodingKeys: String, CodingKey {
        case results = "Search"
    }
}

struct Movie: Decodable {
    let id: String
    let title: String
    let year: String
    let image: String
/*    let sinopsis: String
    let lenght: String
    let director: String
    let genre: String
    let country: String*/
    
    enum CodingKeys: String, CodingKey {
        case id = "imdbID"
        case title = "Title"
        case year = "Year"
        case image = "Poster"
      /*  case sinopsis = "Plot"
        case lenght = "Runtime"
        case director = "Director"
        case genre = "Genre"
        case country = "Country"*/
    }
}
