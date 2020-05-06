//
//  WeatherListStruct.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 04.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation


struct WeatherListStruct {
    
    let coord: Coord
    let weather: Weather
    let base: String
    let main: Main
    let visibility: Int
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let timezone: Int
    let id: Int
    let name: String
    let cod: Int
    
    
    enum CodingKeys: String, CodingKey {
        
        case coord
        case weather
        case base
        case main
        case visibility
        case wind
        case clouds
        case dt
        case sys
        case timezone
        case id
        case name
        case cod
    }
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        coord = try container.decode(Coord.self, forKey: .coord)
        weather = try container.decode(Weather.self, forKey: .weather)
        base = try container.decode(String.self, forKey: .base)
        main = try container.decode(Main.self, forKey: .main)
        visibility = try container.decode(Int.self, forKey: .visibility)
        wind = try container.decode(Wind.self, forKey: .wind)
        clouds = try container.decode(Clouds.self, forKey: .clouds)
        dt = try container.decode(Int.self, forKey: .dt)
        sys = try container.decode(Sys.self, forKey: .sys)
        timezone = try container.decode(Int.self, forKey: .timezone)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        cod = try container.decode(Int.self, forKey: .cod)
    }
}

