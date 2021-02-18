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
            //determining where in the loop itieration the app is currently running
            
        //set bottomLabeltext to item in array at currentIndex
            bottomLabel.text = favoriteFoodsArray[currentIndex]
            //changes the text in the bottomlabel to the corresponding food name in the array corresponding to the indexed position in the loop
            
            //set title of button to "Next"
            buttonLabel.setTitle ("Next", for: UIControl.State.normal)
        //changes the text in the button to "Next" once the button is pressed
            currentIndex+=1
        //increases the currentIndex value by 1 to advance to the next string in the array
        
        
        
    }
        else
        {
            
            print("Button has been disabled")
            // prints in the monitor that "Button has been disabled" when the loops count has reached 1 value higher than the amount of strings in the array
    (buttonLabel!).isEnabled=false
            //disables the button
}

}
}
