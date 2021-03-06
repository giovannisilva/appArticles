//
//  LoginDataProvider.swift
//  AppList
//
//  Created by Noturno on 14/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import Firebase

protocol LoginDataProviderProtocol: BaseProtocol {
    
    
    
}

class LoginDataProvider {
    
    var delegate: LoginDataProviderProtocol?
    
    func loginVerificacao(email: String, password: String) {
        
        FIRAuth.auth()?.signIn(withEmail: email, password: password) { (user, error) in
            
            if error == nil{
                
                self.delegate?.success(vm: true)
            }
            else {
                
                self.delegate?.fail(error: error as! NSError)
            }
            
            
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
}
