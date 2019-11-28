//
//  ViewController.swift
//  SnowCalls
//
//  Created by Liu, Bojun on 2019-11-27.
//  Copyright © 2019 Liu, Nicole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: Properties
    @IBOutlet weak var inputText: UITextView!
    @IBOutlet weak var outputText: UITextView!
    var builtNumberFromLoop = ""
    // Mark: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convertNumber(_ sender: Any) {
        guard let inputNumber = inputText.text, inputText.text != "" else {
            outputText.text = "Please enter phone numbers to convert."
            return
        }
        outputText.text = ""
        builtNumberFromLoop = ""
        
        for character in inputNumber {
            switch character {
            case "A","B","C":
                let character = 2
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "D","E","F":
                let character = 3
                 builtNumberFromLoop += String(character)
                 print(builtNumberFromLoop)
            case "G","H","I":
                let character = 4
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "J","K","L":
                let character = 5
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "M","N","O":
                let character = 6
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "P","Q","R":
                let character = 7
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "S","T","U":
                let character = 8
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "V","X","Y","Z":
                let character = 9
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            default:
                print(character)
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)

            }
        }
        outputText.text = builtNumberFromLoop
    }
    
    
}

