//
//  ArticleArticleConfiguratorTests.swift
//  MyDocNYT
//
//  Created by Kishore on 08/12/2019.
//  Copyright © 2019 Kishore. All rights reserved.
//

import XCTest

class ArticleModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = ArticleViewControllerMock()
        let configurator = ArticleModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ArticleViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ArticlePresenter, "output is not ArticlePresenter")

        let presenter: ArticlePresenter = viewController.output as! ArticlePresenter
        XCTAssertNotNil(presenter.view, "view in ArticlePresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ArticlePresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ArticleRouter, "router is not ArticleRouter")

        let interactor: ArticleInteractor = presenter.interactor as! ArticleInteractor
        XCTAssertNotNil(interactor.output, "output in ArticleInteractor is nil after configuration")
    }

    class ArticleViewControllerMock: ArticleViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
