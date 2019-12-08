//
//  ArticleArticleInitializer.swift
//  MyDocNYT
//
//  Created by Kishore on 08/12/2019.
//  Copyright © 2019 Kishore. All rights reserved.
//

import UIKit

class ArticleModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var articleViewController: ArticleViewController!

    override func awakeFromNib() {

        let configurator = ArticleModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: articleViewController)
    }

}
