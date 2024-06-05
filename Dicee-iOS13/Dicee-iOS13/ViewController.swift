//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        //diceImageView1.alpha = 0.5
        
        //diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
       let diceArray1 = [
       UIImage(imageLiteralResourceName:"DiceOne"),
       UIImage(imageLiteralResourceName:"DiceTwo"),
       UIImage(imageLiteralResourceName:"DiceThree"),
       UIImage(imageLiteralResourceName:"DiceFour"),
       UIImage(imageLiteralResourceName:"DiceFive"),
       UIImage(imageLiteralResourceName:"DiceSix")]
        
       let diceArray2 = [
       UIImage(imageLiteralResourceName:"DiceOne"),
       UIImage(imageLiteralResourceName:"DiceTwo"),
       UIImage(imageLiteralResourceName:"DiceThree"),
       UIImage(imageLiteralResourceName:"DiceFour"),
       UIImage(imageLiteralResourceName:"DiceFive"),
       UIImage(imageLiteralResourceName:"DiceSix")]
        
       let randomIndex1 = Int.random(in: 0..<diceArray1.count)
       let randomIndex2 = Int.random(in: 0..<diceArray2.count)
           
       // Assuming you have diceImageView1 and diceImageView2
       diceImageView1.image = diceArray1[randomIndex1]
       diceImageView2.image = diceArray2[randomIndex2]
        
        
    }
    
}

