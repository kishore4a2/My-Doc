//
//  ArticleArticlePresenterTests.swift
//  MyDocNYT
//
//  Created by Kishore on 08/12/2019.
//  Copyright © 2019 Kishore. All rights reserved.
//

import XCTest

class ArticlePresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: ArticleInteractorInput {

    }

    class MockRouter: ArticleRouterInput {

    }

    class MockViewController: ArticleViewInput {

        func setupInitialState() {

        }
    }
}
