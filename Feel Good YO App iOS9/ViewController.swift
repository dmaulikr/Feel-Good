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
    
    var quote = ["You can get it done!", "I beleive in you!", "Carpe Diem"]
    var numberQuote = 0
    var buttonText = ["Quote ME", "Inspire Me", "Get it done"]
    var buttonNumber = 0
    
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
        printQuote()
    
    }

    func printQuote(){
    
    }
    
    func changeButtonText(){
    
    }
}

