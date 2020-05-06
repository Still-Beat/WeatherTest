//
//  Weather.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 06.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation

struct Weather: Codable {
    
    let id: Int
    let main: String
    let description: String
    let icon: String
    
    enum CodingKeys: String, CodingKey {
        
        case id
        case main
        case description
        case icon
    }
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        main = try container.decode(String.self, forKey: .main)
        description = try container.decode(String.self, forKey: .description)
        icon = try container.decode(String.self, forKey: .icon)
    }
}
