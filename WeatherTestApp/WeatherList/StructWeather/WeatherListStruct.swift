//
//  WeatherListStruct.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 04.05.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation

struct WeatherTestApp {
    
    var main: Temperature
    
    enum CodingKeys: String, CodingKey {
        case main
     
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(main, forKey: .main)
 
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        main = try container.decode(Temperature.self, forKey: .main)
    
    
}
}
    
