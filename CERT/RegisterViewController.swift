//
//  RegisterViewController.swift
//  CERT
//
//  Created by student on 11/14/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var RegisterFirstName: UITextField!
    @IBOutlet weak var RegisterLastName: UITextField!
    @IBOutlet weak var RegisterContact: UITextField!
    @IBOutlet weak var RegisterPassword: UITextField!
    @IBOutlet weak var RegisterRePassword: UITextField!
    @IBOutlet weak var RegisterRegister: UIButton!
    
    @IBAction func RegisterGoBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    
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
