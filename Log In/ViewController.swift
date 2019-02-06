//
//  ViewController.swift
//  Log In
//
//  Created by Tiego Ouedraogo on 2/2/19.
//  Copyright © 2019 Tiego Ouedraogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var forgotUserName: UIButton!
    @IBOutlet weak var forgotPassWord: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender:
        Any?) {
        segue.destination.navigationItem.title = textField.text
        
        guard let sender = sender as? UIButton else {
            return;
        }
            if sender == forgotPassWord{
                segue.destination.navigationItem.title = "ForgotPassWord"
            }else{
                if sender == forgotUserName{
                    segue.destination.navigationItem.title = "forgotUserName"
                }else{
                    segue.destination.navigationItem.title = textField.text
                }
            }
        }
    
  
    @IBAction func logInButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "logIn", sender: login)
    }
    
    @IBAction func userNameButton(_ sender: UIButton) {
        
         performSegue(withIdentifier: "UserName", sender: forgotUserName)
    }
    
    @IBAction func passWordButton(_ sender: UIButton) {
        
         performSegue(withIdentifier: "PassWord", sender: forgotPassWord)
    }
    
}

