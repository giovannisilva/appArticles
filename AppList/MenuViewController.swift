//
//  MenuViewController.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit
import CircleMenu

class MenuViewController: UIViewController {

    @IBOutlet weak var menuButton: CircleMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.menuButton.setBackgroundImage(#imageLiteral(resourceName: "button cancel"), for: UIControlState.selected)
        
        
        
        self.menuButton.delegate = self


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
