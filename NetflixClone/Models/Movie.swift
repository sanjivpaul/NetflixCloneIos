//
//  Movie.swift
//  NetflixClone
//
//  Created by Sanjiv on 12/07/25.
//

import Foundation

struct TrendingMoviesResponse:Codable {
    let results: [Movie]
}

// ? is help to handle exception if not exist
struct Movie :Codable {
    let id: Int
    let _id: String
    let overview: String?
    let polularity: Double?
    let poster_path:String?
    let release_date: String?
    let title:String?
    let vote_average: Double?
    let vote_count: Int?
    
    
}

/*
 
 
 "_id" = 680cf1c1606f644cd5473b04;
 id = 120;
 overview = "A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.";
 popularity = 100;
 "poster_path" = "https://m.media-amazon.com/images/M/MV5BYTE4ODEwZDUtNDFjOC00NjAxLWEzYTQtYTI1NGVmZmFlNjdiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg";
 "release_date" = 1958;
 title = Vertigo;
 "vote_average" = "8.300000000000001";
 "vote_count" = 364368;
 */
