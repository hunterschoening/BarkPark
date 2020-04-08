//
//  ProfileViewController.swift
//  BarkPark
//
//  Created by Hunter Schoening on 4/8/20.
//  Copyright © 2020 Hunter Schoening. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var nicknameTextfield: UITextField!
    @IBOutlet weak var dogNameTextfield: UITextField!
    @IBOutlet weak var dogBreedTextfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        
        label.text = "Setup Your Profile!"
        
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        
        if let nickname = nicknameTextfield.text, let dogName = dogNameTextfield.text, let dogBreed = dogBreedTextfield.text {
            if nickname.count > 0 && dogName.count > 0 && dogBreed.count > 0 {
                defaults.setValue(nickname, forKey: K.nicknameKey)
                defaults.setValue(dogName, forKey: K.dogNameKey)
                defaults.setValue(dogBreed, forKey: K.dogBreedKey)
                
                //Segue to home tab view controller
                performSegue(withIdentifier: "ProfileToHome", sender: self)
            } else {
                let alert = UIAlertController(title: "Profile Error", message: "All Fields Must Be Filled Out", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
