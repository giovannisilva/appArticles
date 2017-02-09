//
//  MyTableViewCell.swift
//  AppList
//
//  Created by Noturno on 09/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var articleImage: UIImageView!
    
    
    func updateLayoutCell(title: String, author: String, image: UIImage){
        
        self.titleLabel.text = title
        
        self.authorLabel.text = "Autor: " + author
        
        self.articleImage.image = image
        
    }
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
