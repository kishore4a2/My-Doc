//
//  ArticleArticleConfigurator.swift
//  MyDocNYT
//
//  Created by Kishore on 08/12/2019.
//  Copyright © 2019 Kishore. All rights reserved.
//

import UIKit

class ArticleModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ArticleViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ArticleViewController) {

        let router = ArticleRouter()

        let presenter = ArticlePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ArticleInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
