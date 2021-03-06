//
//  ViewController.swift
//  Post Card
//
//  Created by Dallin Holder on 13/11/2014.
//  Copyright (c) 2014 Dallin Holder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var undoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        // Adding a comment here to test commits
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        enterNameTextField.hidden = true
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
    
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    @IBAction func undoButtonPressed(sender: UIButton) {
        messageLabel.hidden = true
        nameLabel.hidden = true
        enterNameTextField.hidden = false
        
        mailButton.setTitle("Send Mail", forState: UIControlState.Normal)

    }


}

