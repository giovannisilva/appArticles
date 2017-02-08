//
//  HomeViewModel.swift
//  AppList
//
//  Created by Noturno on 26/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation

class ArticlesViewModel: NSObject {
    
    private var account: Account?
    private var articlesArray: [Articles]?
    private var currentArticle: Articles?
    private var currentDetailsArticle: Articles?
    
    
    init(account: Account) {
        self.account = account
        self.articlesArray = account.articles
    }
    
    
    func loadCurrentArticle(indice:  Int) {
        
        self.currentArticle = self.articlesArray?[indice]
    }
    
    func articleCount() -> Int {
        
        guard let countArray = self.articlesArray?.count else{return 0}
        
        return countArray
    }
    
    func setupArticleSelected(indice: Int) {
        
        self.currentDetailsArticle = self.articlesArray?[indice]
    }
    
    
    
    var descriptionDetail: String? {
        return self.currentDetailsArticle?.descriptionValue
    }
    

    var title: String {
        guard let loadTitle = self.currentArticle?.title else{return ""}
        return loadTitle
    }
    
    var urlToImage: String {
        guard let loadurlToImage = self.currentArticle?.urlToImage else{return ""}
        return loadurlToImage
    }

    var descriptionValue: String {
        guard let loadLescriptionValue = self.currentArticle?.descriptionValue else{return ""}
        return loadLescriptionValue
    }

    var publishedAt: String {
        guard let loadPublishedAt = self.currentArticle?.publishedAt else{return ""}
        return loadPublishedAt
    }

    var author: String {
        guard let loadAuthor = self.currentArticle?.author else{return ""}
        return loadAuthor
    }

    var url: String {
        guard let loadUrl = self.currentArticle?.url else{return ""}
        return loadUrl
    }
}
