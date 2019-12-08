//
//  ArticleArticlePresenter.swift
//  MyDocNYT
//
//  Created by Kishore on 08/12/2019.
//  Copyright © 2019 Kishore. All rights reserved.
//

class ArticlePresenter: ArticleModuleInput, ArticleViewOutput, ArticleInteractorOutput {

    weak var view: ArticleViewInput!
    var interactor: ArticleInteractorInput!
    var router: ArticleRouterInput!

    func viewIsReady() {

    }
}
