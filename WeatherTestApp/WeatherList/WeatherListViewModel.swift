//
//  WeatherListViewModel.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 27.04.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation
import Alamofire
import Realm




class WeatherListViewModel  {
    
    let endpointurl = "https://api.openweathermap.org/data/2.5/forecast/"
    
    func getData(city:String) {
    
   
    let parameters: Parameters = [
        "appid": "ee9ecf611ea6c5e6983c2d5e6ba45047",
        "q": city,
        "lang": "ru",
        "units": "metric"
        ]

    AF.request(endpointurl,
                      method: .get,
                      parameters: parameters
    ).responseJSON { responseJSON in
        
        print(responseJSON.result)
        }
}
    
}





