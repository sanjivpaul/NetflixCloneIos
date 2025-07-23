//
//  Tv.swift
//  NetflixClone
//
//  Created by Sanjiv on 13/07/25.
//

import Foundation


struct TrendingTvResponse:Codable {
    let results: [Tv]
}

// ? is help to handle exception if not exist
// for now in backend i dont have any Tv data so here also i will
// parse the Movies
struct Tv :Codable {
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




