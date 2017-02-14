//
//  article+circleMenu.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import CircleMenu


extension MenuViewController: CircleMenuDelegate {
    
    func circleMenu(_ circleMenu: CircleMenu, willDisplay button: UIButton, atIndex: Int) {
        
        if atIndex == 0 {
            
            button.setBackgroundImage(#imageLiteral(resourceName: "button menu 2(camera)"), for: UIControlState.normal)
            button.backgroundColor = UIColor.orange
        }

        
        if atIndex == 1 {
            
            button.setBackgroundImage(#imageLiteral(resourceName: "buttonNews"), for: UIControlState.normal)
            button.backgroundColor = UIColor.green
        }
        
        if atIndex == 2 {
            
            button.setBackgroundImage(#imageLiteral(resourceName: "buttonMap"), for: UIControlState.normal)
            button.backgroundColor = UIColor.black
        }
        
    }
    
    func circleMenu(_ circleMenu: CircleMenu, buttonDidSelected button: UIButton, atIndex: Int) {
        
        print(atIndex)
        
    }
    
    func circleMenu(_ circleMenu: CircleMenu, buttonWillSelected button: UIButton, atIndex: Int) {
        
        if atIndex == 1{
        
            performSegue(withIdentifier: "menuToNavigator", sender: atIndex)
        }
    }
    
    
}
