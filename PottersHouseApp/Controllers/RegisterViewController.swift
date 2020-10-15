//
//  RegisterViewController.swift
//  PottersHouseApp
//
//  Created by Аня Голубева on 10/10/2020.
//  Copyright © 2020 Аня Голубева. All rights reserved.
//

import UIKit
import FirebaseAuth


class RegisterViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    
    
    @IBOutlet weak var passwowd_confirm: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
            super.viewDidLoad()


        }
        
        @IBAction func signUpAction(_ sender: Any) {
        if password.text != passwowd_confirm.text {
        let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
                }
        else{
        Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
         if error == nil {
           self.performSegue(withIdentifier: "signupToHome", sender: self)
                        }
         else{
           let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
           let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
               }
                    }
              }
        }
        
    }
