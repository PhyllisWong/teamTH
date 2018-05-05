//
//  NetworkingLayer.swift
//  Meow-Fest
//
//  Created by Phyllis Wong on 5/5/18.
//  Copyright © 2018 Phyllis Wong. All rights reserved.
//

import Foundation

/*
 Parts of the HTTP Request
 1. Request Method: GET, PUT, DELETE or POST
 2. Header
 3. URL Path
 4. URL Parameters
 5. Body
 */

// #1
enum HTTPMethod: String {
    case get = "GET"
}

enum Resource {
    case cats
    
    // #1
    func httpMethod() -> HTTPMethod {
        switch self {
        case .cats:
            return .get
        }
    }
    
    // #2
    func header(token: String) -> [String: String] {
        switch self {
            
        // FIXME: No header needed
        case .cats:
            return [:]
        }
    }
    
    // #3
    func path() -> String? {
        switch self {
        case .cats:
            return nil
        }
    }
    
    // #4
    func urlParameters() -> [String: String] {
        switch self {
        case .cats:
            return [:]
        }
    }
    
    // #5
    func body() -> Data? {
        switch self {
        case .cats:
            return nil
        }
    }
}

class Networking {
    let session = URLSession.shared
    let baseURL = "https://chex-triplebyte.herokuapp.com/api/cats?page=0"
    
    func fetch(resource: Resource, completion: @escaping ([Decodable]) -> ()) {
        let fullURL = baseURL
        var item = NSURLQueryItem()
        
        
        let componets = NSURLComponents(string: fullURL)
        for (key, value) in resource.urlParameters() {
            item = NSURLQueryItem(name: key, value: value)
        }
        
        componets?.queryItems = [item as URLQueryItem]
        
        let url = componets?.url
        var request = URLRequest(url: url!)
       
        request.httpMethod = resource.httpMethod().rawValue
        
        session.dataTask(with: request) { (data, res, err) in
            if let data = data {
                switch resource {
                case .cats:
                    let catsList = try? JSONDecoder().decode(CatsList.self, from: data)
                    guard let cats = catsList?.cats else { return }
                    //                    print("do something")
                    return completion(cats)
                    
                }
            }
        }.resume()
    }
}
