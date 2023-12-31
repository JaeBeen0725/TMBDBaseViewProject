//
//  TMBDData.swift
//  TMBDBaseViewProject
//
//  Created by Jae Oh on 2023/08/28.
//

import Foundation

struct TMDBData: Codable {
    let page: Int
    let movies: [Movie]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page
        case movies = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Movie: Codable {
    let adult: Bool
  //  let backdropPath: String
   // let id: Int
    let title: String?
    let originalLanguage: String?
    let originalTitle: String?
    let overview, posterPath: String
    let mediaType: String?
    let genreIDS: [Int]
    let popularity: Double
    let releaseDate: String?
    //let video: Bool?
    let voteAverage: Double
    let voteCount: Int
    let name, originalName, firstAirDate: String?
   // let originCountry: [String]?

    enum CodingKeys: String, CodingKey {
        case adult
       // case backdropPath = "backdrop_path"
       // case id
        case title
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity
        case releaseDate = "release_date"
       // case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case name
        case originalName = "original_name"
        case firstAirDate = "first_air_date"
      //  case originCountry = "origin_country"
    }
}






//// MARK: - Lotto
//struct TMDBData: Codable {
//    let totalPages: Int
//    let movies: [Movie]
//    let totalResults, page: Int
//
//    enum CodingKeys: String, CodingKey {
//        case totalPages = "total_pages"
//        case movies = "results"
//        case totalResults = "total_results"
//        case page
//    }
//}
//
//// MARK: - Result
//struct Movie: Codable {
//    let genreIDS: [Int]
//    let id: Int
//    let overview: String
//    let voteAverage: Double
//    let adult: Bool
//    let backdropPath: String?
//    let mediaType: String?
//    let releaseDate: String?
//    let originalLanguage: String
//    let posterPath: String?
////    let originalTitle: S
//    let title: String?
//    let popularity: Double
//    let video: Bool
//    let voteCount: Int
//
//    enum CodingKeys: String, CodingKey {
//        case genreIDS = "genre_ids"
//        case id, overview
//        case voteAverage = "vote_average"
//        case adult
//        case backdropPath = "backdrop_path"
//        case mediaType = "media_type"
//        case releaseDate = "release_date"
//        case originalLanguage = "original_language"
//        case posterPath = "poster_path"
////        case originalTitle = "original_title"
//        case title, popularity, video
//        case voteCount = "vote_count"
//    }
//}
