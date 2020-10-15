//
//  LoginViewController.swift
//  PottersHouseApp
//
//  Created by Аня Голубева on 10/10/2020.
//  Copyright © 2020 Аня Голубева. All rights reserved.
//

import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {

     @IBOutlet weak var email: UITextField!
     @IBOutlet weak var password: UITextField!
     override func viewDidLoad() {
         super.viewDidLoad()

         // Do any additional setup after loading the view.
     }

     @IBAction func LoginFunch(_ sender: Any) {
         Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
               if error == nil{
                 self.performSegue(withIdentifier: "loginToHome", sender: self)
                              }
                else{
                 let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                 let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                                
                  alertController.addAction(defaultAction)
                  self.present(alertController, animated: true, completion: nil)
                     }
            }
     }
    
    @IBAction func ResetPasswrodNow(_ sender: Any)
    {
         self.performSegue(withIdentifier: "ResetPaassword", sender: self)
    }
    
             
     }

