//
//  LoginViewController.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var buttonLogin: UIButton!
    
    
    func setupLoginButton() {
        
        self.buttonLogin.layer.borderWidth = 2.0
        self.buttonLogin.layer.borderColor = UIColor.white.cgColor
        self.buttonLogin.layer.cornerRadius = 2.0
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupLoginButton()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
