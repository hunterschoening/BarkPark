//
//  ViewController.swift
//  BarkPark
//
//  Created by Hunter Schoening on 4/2/20.
//  Copyright © 2020 Hunter Schoening. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var brandNameLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        brandNameLabel.text = "BarkPark!"
        
        registerButton.layer.cornerRadius = 40
        loginButton.layer.cornerRadius = 40
    }


}

