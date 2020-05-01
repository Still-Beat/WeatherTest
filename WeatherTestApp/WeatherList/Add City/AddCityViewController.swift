//
//  AddCityViewController.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 30.04.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import UIKit



protocol AddCityViewControllerDelegate {
    func cityBeChanges(name: String)
    func alertMainView()
}

class AddCityViewController: UIViewController{
    
    @IBOutlet weak var changeCityLabel: UILabel!
    @IBOutlet weak var cityNameField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    var delegate: AddCityViewControllerDelegate?
    
    @IBAction func exitButton(_ sender: Any) {
        
        
        if let text = cityNameField.text, !text.isEmpty  {
            delegate?.cityBeChanges(name: text)
            self.dismiss(animated: true)
            
        }
        else {
            self.dismiss(animated: true)
            delegate?.alertMainView()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        changeCityLabel.text = "Choose City"
        submitButton.setTitle("OK", for: .normal)
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
