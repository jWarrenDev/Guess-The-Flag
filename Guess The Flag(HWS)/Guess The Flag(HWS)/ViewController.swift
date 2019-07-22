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
    var correctAnswer = 0
    
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
        
        // askQuestion(action: nil)
        askQuestion()

    }
    
    //func askQuestion(action: UIAlertAction! )
    func askQuestion(action: UIAlertAction! = nil) {
        
        // add a shuffle
        countries.shuffle()
        
        // create randomizer
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
    
        title = countries[correctAnswer].uppercased()
        navigationController?.title = title
        
        print(title!)
        print(correctAnswer)

    }

    // connect all the buttons to the IBACtion and use Tags
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Incorrect"
            score -= 1
        }
    
        // UIALERT
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style:.default, handler: askQuestion))
    
        present(ac, animated: true)
    }
}


// NOTES:

// UIALERT is cool
// Pay attention to the errors
// Title in navigation bar doesn't really make sense... but ok...
