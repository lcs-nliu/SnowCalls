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
    // Connected input text view to controller through an outlet
    @IBOutlet weak var inputText: UITextView!
    // Connected output text view to controller through an outlet
    @IBOutlet weak var outputText: UITextView!
    // Created string variable for numbers being built
    var builtNumberFromLoop = ""
    
    // Mark: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Created an action for when the convert button is pressed
    @IBAction func convertNumber(_ sender: Any) {
        // guard against no input
        guard let inputNumber = inputText.text, inputText.text != "" else {
            outputText.text = "Please enter phone numbers to convert."
            return
        }
        // set variables to zero
        outputText.text = ""
        builtNumberFromLoop = ""
        // for in loop to check every character for a letter, number, or symbol
        for character in inputNumber.lowercased() {
            switch character {
            case "a"..."c":
                builtNumberFromLoop += "2"
                print(builtNumberFromLoop)
            case "d"..."f":
                builtNumberFromLoop += "3"
                print(builtNumberFromLoop)
            case "g"..."i":
                builtNumberFromLoop += "4"
                print(builtNumberFromLoop)
            case "j"..."l":
                builtNumberFromLoop += "5"
                print(builtNumberFromLoop)
            case "m"..."o":
                builtNumberFromLoop += "6"
                print(builtNumberFromLoop)
            case "p"..."r":
                builtNumberFromLoop += "7"
                print(builtNumberFromLoop)
            case "s"..."u":
                builtNumberFromLoop += "8"
                print(builtNumberFromLoop)
            case "v"..."z":
                builtNumberFromLoop += "9"
                print(builtNumberFromLoop)
            case "-":
                print(character)
            case "0"..."9":
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            default:
                _ = ""
                
            }
            // if statement to check variables in string
            if builtNumberFromLoop.count > 10 {
                builtNumberFromLoop.remove(at: builtNumberFromLoop.index(before: builtNumberFromLoop.endIndex))
            }
            
        
        }
        outputText.text = builtNumberFromLoop
    }
    
    
}

