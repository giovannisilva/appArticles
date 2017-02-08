//
//  ArticlesDetailsViewController.swift
//  AppList
//
//  Created by Noturno on 07/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class ArticlesDetailsViewController: UIViewController {
    
    var viewModel: ArticlesViewModel?
    

    @IBOutlet weak var textViewDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textViewDescription.text = self.viewModel?.descriptionDetail

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    

    
}
