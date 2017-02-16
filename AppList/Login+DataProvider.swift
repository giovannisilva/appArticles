//
//  Login+DataProvider.swift
//  AppList
//
//  Created by Noturno on 14/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import UIKit

extension LoginViewController: LoginDataProviderProtocol {
    
    func success<T>(vm: T) {
        
        performSegue(withIdentifier: "loginToMenu", sender: nil)
        print("logou")
    }
    
    func fail(error: NSError) {
        
        print("falhou")
        
    }
    
}
