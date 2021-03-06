//
//  ViewController.swift
//  PCard
//
//  Created by Lloyd E Mitchell on 10/15/14.
//  Copyright (c) 2014 Lloyd E Mitchell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    @IBOutlet weak var displayName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        displayName.hidden = false
        displayName.text = enterNameTextField.text
        displayName.textColor = UIColor.yellowColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
}

