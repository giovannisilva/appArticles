//
//  Articles+UITableView.swift
//  AppList
//
//  Created by Noturno on 07/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import UIKit


extension ArticlesViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        guard let countArticles = self.viewModel?.articleCount() else {return 0}
        
        return countArticles
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        // Configure the cell...
        
        self.viewModel?.loadCurrentArticle(indice: indexPath.row)
        
        cell.textLabel?.text = self.viewModel?.title
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Articles"
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Section: \(indexPath.section) \nRow: \(indexPath.row) \nIndexPath: \(indexPath)")
        
        performSegue(withIdentifier: "details", sender: indexPath.row)
        
        self.viewModel?.setupArticleSelected(indice: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let detailsViewController = segue.destination as? ArticlesDetailsViewController
        
        detailsViewController?.viewModel = self.viewModel
            
        print(detailsViewController?.viewModel?.descriptionDetail)
            
        
    }

    
    
    
    
}
