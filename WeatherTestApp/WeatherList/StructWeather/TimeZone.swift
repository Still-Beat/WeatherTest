//
//  TimeZone.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 04.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation

struct TimeZone: Codable {
    var timezone: Int
    
    enum CodingKeys: String, CodingKey {
        case timezone
    }
    
        func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(timezone, forKey: .timezone)
    
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        timezone = try container.decode(Int.self, forKey: .timezone)
    
}
}
