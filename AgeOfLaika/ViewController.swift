//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Marc Cabezas on 5/1/17.
//  Copyright © 2017 Marc Cabezas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mDogYearsLabel: UILabel!
    @IBOutlet weak var mHumanYearsTextField: UITextField!
    @IBOutlet weak var mConvertButon: UIButton!
    @IBOutlet weak var mLaikaImageView: UIImageView!

    @IBAction func convertButtonAction(_ sender: Any) {
        
        let hoomanYears = Int(mHumanYearsTextField.text!)
        
        let dogYears = convertHumanYearsToDog(humanYears: hoomanYears!)
        
        mDogYearsLabel.text = String(dogYears)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImage(named: "AgeOfLaika")
        mLaikaImageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func convertHumanYearsToDog(humanYears: Int) -> Int {
        return humanYears*7
    }


}

