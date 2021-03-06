//
//  RegisterViewController.swift
//  CERT
//
//  Created by student on 11/14/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit



class RegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let ranks = ["A", "B", "C"]
    var selectedRank = ""
    let databaseManagerInstance : DatabaseManager = DatabaseManager()
  
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ranks.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ranks[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerView.isHidden = false
        selectedRank = ranks[row]
    }
    
    
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var contact: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var registerBTNoutlet: UIButton!
    @IBOutlet weak var rankPV: UIPickerView!
    

    @IBAction func goBack(_ sender: Any) {
       
        
       /* self.dismiss(animated: true, completion: nil)
        //declare parameter as a dictionary which contains string as key and value combination. considering inputs are valid
        let parameters = ["FirstName": firstName.text as Any, "LastName": lastName.text as Any, "Contact":Int(contact.text!) as Any, "Password":password.text as Any] as [String : Any]
        
        //create the url with URL
        let url = URL(string: "https://api.mlab.com/api/1/databases/cert/collections/my-coll?apiKey=F4GTF2uFESKCFCx7q87ZtFmrhtL-A1-j")!
            //change the url
        
        //create the session object
        let session = URLSession.shared

        //now create the URLRequest object using the url object
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST" //set http method as POST
        
        do
        {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
             // pass dictionary to nsdata object and set it as request body
        }
            
        catch let error
        {
            print(error.localizedDescription)
        }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                //create json object from data
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    // handle json...
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()*/
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rankPV.dataSource = self
        rankPV.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func register(_ sender: Any) {
        
        databaseManagerInstance.register(firstName: firstName.text!, lastName: lastName.text!, contact: contact.text!, password: password.text!, confirmPassword: confirmPassword.text!, rank: selectedRank)
        
        let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
        
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
