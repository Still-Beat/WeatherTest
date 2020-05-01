//
//  WeatherListVIewCellModel.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 28.04.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import Foundation
protocol WeatherListCellViewModelDelegate {
    func CountBeChanges()
}

class WeatherListCellViewModel {
    
    let cityName: String
    let temperatureValue: String
    let timeValue: String
    let cloud: Bool
    var delegate: WeatherListCellViewModelDelegate?
    
    init(cityName: String, temperatureValue: String, timeValue: String, cloud: Bool) {
        
        self.cityName = cityName
        self.temperatureValue = temperatureValue
        self.timeValue = timeValue
        self.cloud = cloud
        self.delegate?.CountBeChanges()
        
    }
    
}

