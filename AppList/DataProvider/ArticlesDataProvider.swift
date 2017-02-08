//
//  ArticlesDataProvider.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation


protocol ArticlesDataProviderProtocol: BaseProtocol {
    
    
}

class ArticlesDataProvider  {
    
    var  delegate: ArticlesDataProviderProtocol?
    
    func getAllArticles(){
        
        ArticlesAPIStore().getAllArticles(userID: "20263af5ead54e6f872c68fe4eea7f52") { (account, error) in
            
            if error == nil {
                
                guard let modelAccount = account else{return}
                
                let vm = ArticlesViewModel(account: modelAccount)
                
                self.delegate?.success(vm: vm)
                
                
            }else{
                self.delegate?.fail(error: error!)
            }
            
            
    
            print(account?.articles?[0].title)
            print(error)
            
        }
        //TO DO implementar o método que vem da camada API
    }
}
