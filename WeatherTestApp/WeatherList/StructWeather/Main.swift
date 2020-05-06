//
//  Temperature.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 04.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation

struct Main: Codable {
    
    let temp: Int
    let feelsLike: Double
    let tempMin: Int
    let tempMax: Int
    let pressure:Int
    let humidity:Int
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
       case tempMin = "temp_min"
       case tempMax = "temp_max"
        case pressure
       case humidity
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        temp = try container.decode(Int.self, forKey: .temp)
        feelsLike = try container.decode(Double.self, forKey: .feelsLike)
        tempMin = try container.decode(Int.self, forKey: .tempMin)
        tempMax = try container.decode(Int.self, forKey: .tempMax)
        pressure = try container.decode(Int.self, forKey: .pressure)
        humidity = try container.decode(Int.self, forKey: .humidity)
    }
    
}
