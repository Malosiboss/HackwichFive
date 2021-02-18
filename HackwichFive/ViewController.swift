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
    
    var currentIndex = 0
    
    var favoriteFoodsArray = ["Pizza", "Fried Chicken", "Soy beans", "Calamari", "Ice Cream"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.topLabel.text = "My Favorite foods"
        
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
    }
    
    @IBAction func buttonPressed(_ sender: Any)
    {
    
    }
    

}

