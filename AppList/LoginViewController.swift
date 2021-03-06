//
//  LoginViewController.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    var dataProvider = LoginDataProvider()
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var buttonLogin: UIButton!
    
    
    @IBAction func actionButtonLogin(_ sender: UIButton) {
        
        if (self.emailTextField.text?.isEmpty)! || (self.passwordTextField.text?.isEmpty)! {
            
            print("preencha os campos")
            
            let alertComum : UIAlertController = UIAlertController(title: "Alerta", message: "Preencha todos os campos", preferredStyle: UIAlertControllerStyle.alert)
            
            let acaoOk : UIAlertAction = UIAlertAction(title: "OK", style: .default) { (acao) in
                
                print("Clicou OK")
            }
            
            alertComum.addAction(acaoOk)
            
            self.present(alertComum, animated: true, completion: nil)

        }
        else {
            self.dataProvider.loginVerificacao(email: self.emailTextField.text!, password: self.passwordTextField.text!)
            
        }
    }
    
    
    
    func setupLoginButton() {
        
      //  self.buttonLogin.layer.borderWidth = 2.0
      //  self.buttonLogin.layer.borderColor = UIColor.white.cgColor
        self.buttonLogin.layer.cornerRadius = 10.0
        
    }
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataProvider.delegate = self
        
        self.setupLoginButton()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
