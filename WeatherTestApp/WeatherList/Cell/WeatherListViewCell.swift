//
//  WeatherListViewCell.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 27.04.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import UIKit

class WeatherListViewCell: UITableViewCell {
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
    
    var viewModel: WeatherListCellViewModel? {
        didSet {
            guard let vm  = viewModel else {
                return
            }
            temperatureLabel.text = vm.temperatureValue
            timeLabel.text = vm.timeValue
            cityLabel.text = vm.cityName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
