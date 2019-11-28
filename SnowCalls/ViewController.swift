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
            
            if builtNumberFromLoop.count > 10 {
                builtNumberFromLoop.remove(at: builtNumberFromLoop.index(before: builtNumberFromLoop.endIndex))
            }
            
        
        }
        outputText.text = builtNumberFromLoop
    }
    
    
}

