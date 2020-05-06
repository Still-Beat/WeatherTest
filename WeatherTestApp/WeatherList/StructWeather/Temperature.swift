//
//  Temperature.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 04.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation

struct Temperature: Codable {
var temp: Int

enum CodingKeys: String, CodingKey {
    case temp
}

    func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(temp, forKey: .temp)

}


init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    temp = try container.decode(Int.self, forKey: .temp)
}
    
}
