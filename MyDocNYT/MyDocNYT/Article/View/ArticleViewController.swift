//
//  ArticleArticleViewController.swift
//  MyDocNYT
//
//  Created by Kishore on 08/12/2019.
//  Copyright © 2019 Kishore. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController, ArticleViewInput {

    var output: ArticleViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: ArticleViewInput
    func setupInitialState() {
    }
}
