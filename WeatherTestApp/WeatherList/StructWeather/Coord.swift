//
//  Coord.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 06.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation

struct Coord: Codable {
    let lon: Double
    let lat: Double
    
    enum CodingKeys: String, CodingKey {
        case lon
        case lat
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        lon = try container.decode(Double.self, forKey: .lon)
        lat = try container.decode(Double.self, forKey: .lat)
        
    }
}
