//
//  RegisterViewController.swift
//  BarkPark
//
//  Created by Hunter Schoening on 4/2/20.
//  Copyright © 2020 Hunter Schoening. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    // create the alert
                    let alert = UIAlertController(title: "Registration Error", message: e.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                } else {
                    //Navigate to the HomeViewController
                    print("Registration Successful")
                    self.performSegue(withIdentifier: "RegisterToHome", sender: self)
                }
            }
        }
    }
}
