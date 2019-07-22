//
//  ViewController.swift
//  Guess The Flag(HWS)
//
//  Created by Jerrick Warren on 7/22/19.
//  Copyright © 2019 Jerrick Warren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // why couldn't we just make a for loop to grab the name of the file.
        // I guess writing the countries out makes sense.
        
        countries += [
                      "estonia",
                      "france",
                      "germany",
                      "ireland",
                      "italy",
                      "monaco",
                      "nigeria",
                      "poland",
                      "russia",
                      "spain",
                      "uk",
                      "us"
                     ]

        // Everything is backed by a CA Layer (low Level). Uses CoreGraphics color. UIColor is higher level
        
        button1.layer.borderWidth = 3
        button2.layer.borderWidth = 3
        button3.layer.borderWidth = 3

        button1.layer.borderColor = UIColor.purple.cgColor
        button2.layer.borderColor = UIColor.green.cgColor
        button3.layer.borderColor = UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0).cgColor
        
        askQuestion()
    }
    
    func askQuestion() {
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)

    }


}

