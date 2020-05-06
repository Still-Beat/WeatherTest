//
//  Sys.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 06.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation

struct Sys: Codable {
    
    let type: Int
    let id: Int
    let country: String
    let sunrise: Int
    let sunset: Int
    
    
    enum CodingKeys: String, CodingKey {
        
        case type
        case id
        case country
        case sunrise
        case sunset
    }
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        type = try container.decode(Int.self, forKey: .type)
        id = try container.decode(Int.self, forKey: .id)
        country = try container.decode(String.self, forKey: .country)
        sunrise = try container.decode(Int.self, forKey: .sunrise)
        sunset = try container.decode(Int.self, forKey: .sunset)
    }
}
