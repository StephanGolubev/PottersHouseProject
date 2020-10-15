//
//  StartViewController.swift
//  PottersHouseApp
//
//  Created by Аня Голубева on 10/10/2020.
//  Copyright © 2020 Аня Голубева. All rights reserved.
//

import UIKit
import FirebaseAuth


class StartViewController: UIViewController {


    
        override func viewDidAppear(_ animated: Bool){
     super.viewDidAppear(animated)
     if Auth.auth().currentUser != nil {
       self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
    }
    }
  

 
    @IBAction func GoToLoginViewScreen(_ sender: Any) {
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Login")
//          self.present(vc!, animated: true, completion: nil)
        self.performSegue(withIdentifier: "GoToLogin", sender: nil)
    }
    
    @IBAction func RegisterGo(_ sender: Any) {
        self.performSegue(withIdentifier: "GoToRegister", sender: nil)
        
    }
}
