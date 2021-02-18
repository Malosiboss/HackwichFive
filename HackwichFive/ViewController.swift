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
        //Line 37 is checking the conditionof currentIndex number and comparing it to the overall array total which in this case is 4. If crrentindex is less than favoriteFoodsArray count it will run the if but if current index is greater than favoriteFoodsArray it will run the else statement
        if self.currentIndex < self.favoriteFoodsArray.count
        
        {
            //line 40 is setting bottomLabel to the current favorit food string in corispondence to the current index upon IBAction
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            
            //This line sets the title of the button to "next" as long as the if statment is running and their are more iterations to cycle through
            buttonLabel.setTitle("Next", for : UIControl.State.normal)
            
            //This line increases the Currentindex intiger by 1 each time the button is pressed it effects the global var currentIndex previously set to 0
            currentIndex+=1
            
        }
        else
        {
            //This print places the above string in the consol establising the buton has been disabled
            print("Button has been Disabled")
           
            //This line Disables the button by turning it off completly
            (buttonLabel!).isEnabled=false
            
        
        }
    }
    

}

