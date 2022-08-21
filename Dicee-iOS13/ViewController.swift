//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var diceImageView1: UIImageView!
    @IBOutlet var diceImageView2: UIImageView!
    @IBOutlet var diceImageView3: UIImageView!
    @IBOutlet var diceImageView4: UIImageView!
    
    var diceNumber1: Int?
    var diceNumber2: Int?
    var diceNumber3: Int?
    var diceNumber4: Int?
    
    @IBAction func rollBtnPressed(_ sender: UIButton) {
        diceNumber1 = Int.random(in: 1...6)
        diceNumber2 = Int.random(in: 1...6)
        diceNumber3 = Int.random(in: 1...6)
        diceNumber4 = Int.random(in: 1...6)
        diceImageView1.image = UIImage(named: numberToName(diceNumber1!))
        diceImageView2.image = UIImage(named: numberToName(diceNumber2!))
        diceImageView3.image = UIImage(named: numberToName(diceNumber3!))
        diceImageView4.image = UIImage(named: numberToName(diceNumber4!))
        
    }
    
    func numberToName(_ diceNumber: Int)-> String{
        switch diceNumber{
        case 1:
            return "DiceOne"
        case 2:
            return "DiceTwo"
        case 3:
            return "DiceThree"
        case 4:
            return "DiceFour"
        case 5:
            return "DiceFive"
        default:
            return "DiceSix"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

