//
//  APICaller.swift
//  NetflixClone
//
//  Created by V1 Macbook Air on 11/07/2025.
//

import Foundation

struct Constants {
    static let baseURL = "http://192.168.1.6:3000/api"
}

class APICaller{
    static let shared = APICaller()
    
//    callback function
    func getTrendingMoview(completion: @escaping (String)->Void){
        guard let url = URL(string: "\(Constants.baseURL)/movie/popular?page=2") else {return}
        
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        
//        // Add Authorization Header (e.g., Bearer Token)
//        request.setValue("your-secret-key-for-auth", forHTTPHeaderField: "Authorization")
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")


        
//        we have our data here
        let task = URLSession.shared.dataTask(with: URLRequest(url:url)) {data, _, error in
            guard let data = data, error ==  nil else{
                print("Network error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
//        convert data into a json object
            do{
                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(results)

            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
