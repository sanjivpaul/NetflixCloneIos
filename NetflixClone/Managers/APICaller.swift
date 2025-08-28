//
//  APICaller.swift
//  NetflixClone
//
//  Created by V1 Macbook Air on 11/07/2025.
//

import Foundation

struct Constants {
//    static let baseURL = "http://192.168.1.6:3000/api"
    static let baseURL = "https://mytaskapp-iota.vercel.app/api"
}

enum APIError: Error{
    case failedToGetData
}

class APICaller{
    static let shared = APICaller()
    
//    callback function
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) ->Void){
        guard let url = URL(string: "\(Constants.baseURL)/movie/popular") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
//        
//        // Add Authorization Header (e.g., Bearer Token)
        request.setValue("your-secret-key-for-auth", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
//        we have our data here
//         URLRequest(url:url) =>  replace this with => request
        let task = URLSession.shared.dataTask(with: request) {data, _, error in
            guard let data = data, error ==  nil else{
                print("Network error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
//        convert data into a json object
            do{
//                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
//                print(results)
                

            } catch {
//                print(error.localizedDescription)
                completion(.failure(APIError.failedToGetData))
            }
        }
        task.resume()
    }
    
    
//    Trending Tv
    func getTrandingTvs(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url = URL(string: "\(Constants.baseURL)/movie/popular") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        request.setValue("your-secret-key-for-auth", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request){data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                print(results)
                completion(.success(results.results))
            }
            
            catch {
//                print(error.localizedDescription)
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    
//    Upcoming Movies
    func getUpcomingMovies(completion: @escaping (Result<[Movie], Error>)-> Void){
        guard let url = URL(string: "\(Constants.baseURL)/movie/popular") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        request.setValue("your-secret-key-for-auth", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request){data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }
            
            catch {
                completion(.failure(APIError.failedToGetData))
            }
            
        }
        task.resume()
    }
    
    
//    get popular
    func getPopular(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url = URL(string: "\(Constants.baseURL)/movie/popular") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        request.setValue("your-secret-key-for-auth", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request){data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }
            
            catch {
                completion(.failure(APIError.failedToGetData))
            }
            
        }
        
        task.resume()
    }
    
//    get top rated
    func getTopRated(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url = URL(string: "\(Constants.baseURL)/movie/popular") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        request.setValue("your-secret-key-for-auth", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request){data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }
            
            catch {
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    

}
