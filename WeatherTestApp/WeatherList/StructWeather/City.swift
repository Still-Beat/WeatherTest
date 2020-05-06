//
//  Time.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 04.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation

struct City: Codable {
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case name
    }
    
        func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    
}
}
