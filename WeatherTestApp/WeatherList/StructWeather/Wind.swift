//
//  Wind.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 06.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation


struct Wind: Codable {
    
    let speed: Int
    let deg: Int
    
    
    enum CodingKeys: String, CodingKey {
        
        case speed
        case deg
    }
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        speed = try container.decode(Int.self, forKey: .speed)
        deg = try container.decode(Int.self, forKey: .deg)
    }
}
