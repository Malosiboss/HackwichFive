//
//  ViewController.swift
//  HackwichFive
//
//  Created by Noah Nua on 2/18/21.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    var currentIndex = 0
    
    
    var favoriteFoodsArray = ["Pizza", "Fried Chicken", "Soy beans", "Calamari", "Ice Cream"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.topLabel.text = "My Favorite foods"
        
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
    }
    
    
    @IBAction func buttonPressed(_ sender: Any)
    {
        if self.currentIndex < self.favoriteFoodsArray.count
        {
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Next", for : UIControl.State.normal)
            currentIndex+=1
        
        }
        else
        {
            print("Button has been Disabled")
            (buttonLabel!).isEnabled=false
        }
    }
    

}

