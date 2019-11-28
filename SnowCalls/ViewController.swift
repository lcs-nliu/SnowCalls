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
                let character = 2
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "d"..."f":
                let character = 3
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "g"..."i":
                let character = 4
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "j"..."l":
                let character = 5
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "m"..."o":
                let character = 6
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "p"..."r":
                let character = 7
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "s"..."u":
                let character = 8
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "v"..."z":
                let character = 9
                builtNumberFromLoop += String(character)
                print(builtNumberFromLoop)
            case "-":
                _ = ""
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

