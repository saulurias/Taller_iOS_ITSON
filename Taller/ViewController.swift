//
//  ViewController.swift
//  Taller
//
//  Created by saul ulises urias guzmàn on 29/10/17.
//  Copyright © 2017 saul ulises urias guzmàn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    let loginSegue = "loginSegue"
    
    //MARK: - View Life
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Actions
    @IBAction func loginButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: self.loginSegue, sender: self)
    }
    
    //MARK: - Functions
    func verifyTextFields() -> Bool{
        if textFieldUserName.text == "" {
            self.alert(title: "Required", message: "Username")
            return false
        }else if textFieldPassword.text == "" {
            self.alert(title: "Required", message: "Password")
            return false
        }
        return true
    }
    
    func alert(title: String , message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            (result : UIAlertAction) -> Void in
            print("OK")
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

