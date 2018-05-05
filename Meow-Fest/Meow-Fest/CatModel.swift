//
//  Cat.swift
//  Meow-Fest
//
//  Created by Phyllis Wong on 5/5/18.
//  Copyright © 2018 Phyllis Wong. All rights reserved.
//

import Foundation


// Data structure to display in each tableViewCell
struct Cat {
    let title : String
    let timestamp : String
    let image_url : URL
    let description : String
}


// Extend the Cat struct to convert JSON to Swift naming convention
extension Cat: Decodable {
    
    enum CatKeys: String, CodingKey {
        case title
        case timestamp
        case image_url
        case description
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CatKeys.self)
        let title: String = try container.decodeIfPresent(String.self, forKey: .title) ?? "No name"
        let timestamp: String = try container.decodeIfPresent(String.self, forKey: .timestamp) ?? "No timestamp"
        let image_url: URL = try container.decode(URL.self, forKey: .image_url)
        let description: String = try container.decodeIfPresent(String.self, forKey: .description) ?? "No description"
        
        self.init(title: title, timestamp: timestamp, image_url: image_url, description: description)
    }
}



