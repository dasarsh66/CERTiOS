//
//  LoginViewController.swift
//  CERT
//
//  Created by student on 11/14/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var LoginContact: UITextField!
    @IBOutlet weak var LoginPassword: UITextField!
    
    @IBAction func LoginLogin(_ sender: Any) {
        
        shouldPerformSegue(withIdentifier: "AuthenticateSegue", sender: self)
       // shouldPerformSegue(withIdentifier: "AuthenticateSegue", sender: self)
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    
        
        
    
    return true
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
