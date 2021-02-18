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
    
//IBOutlet for button to access properties
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.topLabel.text = "My Favorite Foods"
    
        //set bottom label to display item at "current index" upon launch at app
        
        bottomLabel.text = favoriteFoodsArray[currentIndex]
        
    }

//part 8
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if currentIndex < favoriteFoodsArray.count {
        //set bottomLabeltext to item in array at currentIndex
            bottomLabel.text = favoriteFoodsArray[currentIndex]
            //set title of button to "Next"
            buttonLabel.setTitle ("Next", for: UIControl.State.normal)
        
            currentIndex+=1
        
        
        
        
    }
        else
        {
            
            print("Button has been disabled")
    (buttonLabel!).isEnabled=false
}

}
}
