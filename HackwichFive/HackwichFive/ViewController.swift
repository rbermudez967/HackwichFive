//
//  ViewController.swift
//  HackwichFive
//
//  Created by Randy Bermudez on 2/18/21.
//  Copyright © 2021 Randy Bermudez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //declare and assign global variable
    
    var currentIndex = 0
    //declare and assign global variable that is an aray that holds a collection of strings that are names of our favorite food
    
    var favoriteFoodsArray = ["Turon", "Guavas", "Anpan", "Malasadas", "Balut"]
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.topLabel.text = "My Favorite Foods"
    
        //set bottom label to display item at "current index" upon launch at app
        
        bottomLabel.text = favoriteFoodsArray[currentIndex]
    }


    
    
}

