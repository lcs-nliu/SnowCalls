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
    
    // Mark: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convertNumber(_ sender: Any) {
        guard let inputNumber = inputText.text, inputText.text != "" else {
            inputText.text = "Please enter phone numbers to convert."
            return
        }
        outputText.text = ""

        }
    }
    
    
}

