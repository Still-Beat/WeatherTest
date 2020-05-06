//
//  Clouds.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 06.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation

struct Clouds: Codable {
    let all: Int
    
    
    
    enum CodingKeys: String, CodingKey {
        case all
        
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        all = try container.decode(Int.self, forKey: .all)
        
        
    }
}
