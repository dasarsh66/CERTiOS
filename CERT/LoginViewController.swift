//
//  LoginViewController.swift
//  CERT
//
//  Created by student on 11/14/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var databaseManagerInstance:DatabaseManager = DatabaseManager()
    
    @IBOutlet weak var LoginContact: UITextField!
    @IBOutlet weak var LoginPassword: UITextField!
    @IBAction func LoginLogin(_ sender: Any) {
        
        if shouldPerformSegue(withIdentifier: "loginSegue", sender: self) {
            performSegue(withIdentifier: "loginSegue", sender: self)
        }
        else {
            let alertController = UIAlertController(title: "Message", message: "Failed", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "loginSegue" {
             databaseManagerInstance.loginUser(userPassword: LoginPassword.text!)
            return true
        }
        else if identifier == "registerationSegue"{
            return true
        }
        else if identifier == "forgotPassSegue" {
            return true
        }
        else {
            return true
        }
    
        }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
