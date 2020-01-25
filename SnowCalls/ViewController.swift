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
        // Created variable pieces to seperate diff phone numbers
        let pieces = inputNumber.lowercased().split(separator: "\n")
        
        // set variables to zero
        outputText.text = ""
        // for in loop to check every character for a letter, number, or symbol
        for piece in pieces {

            // Reset from each new piece
            builtNumberFromLoop = ""
            for character in piece {
                switch character {
                case "a"..."c":
                    builtNumberFromLoop += "2"
                case "d"..."f":
                    builtNumberFromLoop += "3"
                case "g"..."i":
                    builtNumberFromLoop += "4"
                case "j"..."l":
                    builtNumberFromLoop += "5"
                case "m"..."o":
                    builtNumberFromLoop += "6"
                case "p"..."r":
                    builtNumberFromLoop += "7"
                case "s"..."u":
                    builtNumberFromLoop += "8"
                case "v"..."z":
                    builtNumberFromLoop += "9"
                case "0"..."9":
                    builtNumberFromLoop += String(character)
                default:
                    _ = ""
                    
                }
                
                // Add a dash
                if builtNumberFromLoop.count == 3 {
                    builtNumberFromLoop += "-"
                } else if builtNumberFromLoop.count == 7 {
                    builtNumberFromLoop += "-"
                }
                
                
            }
            // Screen output text
            // Add a break after every number
            outputText.text += builtNumberFromLoop + "\n"
        }
        

    }
}



