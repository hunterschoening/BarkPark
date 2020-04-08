//
//  ChatTabViewController.swift
//  BarkPark
//
//  Created by Hunter Schoening on 4/7/20.
//  Copyright © 2020 Hunter Schoening. All rights reserved.
//

import UIKit
import Firebase

class ChatTabViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
        
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        
    }
}
