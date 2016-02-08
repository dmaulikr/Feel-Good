//
//  ViewController.swift
//  Feel Good YO App iOS9
//
//  Created by Tejas Mehta on 1/21/16.
//  Copyright © 2016 Tejas Mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMotivationalQuote: UILabel!
    @IBOutlet weak var btnAnotherQuoteOUTLET: UIButton!
    
    var quoteArray = ["You can get it done!", "I beleive in you!", "Carpe Diem", "You're super duper"]
    var numberQuote = 0
    var buttonText = ["Quote ME", "Inspire Me", "Get it done"]
    var buttonNumber = 0
    var numCheck = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAnotherQuote(sender: UIButton) {
        selectQuote()
        changeButtonText()
    }
    
    func selectQuote(){
        numberQuote = Int(arc4random_uniform(4))
        if numberQuote == numCheck {
            numberQuote = Int(arc4random_uniform(4))
            if numberQuote == numCheck && numberQuote != 0 {
                numberQuote = 0
            } else {
                numberQuote = 1
            }
        }
        
        printQuote()
        numCheck = numberQuote
    }

    func printQuote(){
        lblMotivationalQuote.text = "\(quoteArray[numberQuote])"
    
    }
    
    func changeButtonText(){
        buttonNumber = Int(arc4random_uniform(3))
        btnAnotherQuoteOUTLET.setTitle("\(buttonText[buttonNumber])", forState: UIControlState.Normal)
    }
}

