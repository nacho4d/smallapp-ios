//
//  ModelTests.swift
//  SmallAppTests
//
//  Created by Guillermo Ignacio Enriquez Gutierrez on 2022/08/30.
//

import Foundation
@testable import SmallApp
import XCTest

class ModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test＿通常の挨拶が返却されること() throws {
        let model = Model()
        XCTAssertEqual(model.greetingText, "こんにちは")
    }

    func test＿変更が通知されること() throws {
        let model = Model()
        XCTAssertEqual(model.greetingText, "こんにちは")

        var callCount = 0
        let sink = model.objectWillChange.sink { _ in
            callCount += 1
        }
        model.greetingText = "こんばんは"
        XCTAssertEqual(callCount, 1, "期待値: 変更したことが通知される。つまり、greetingTextが＠Published付であることを期待する")
        XCTAssertEqual(model.greetingText, "こんばんは")
        XCTAssertNotNil(sink)
    }

    func test＿ちょっと野蛮な挨拶もできること() throws {
        try XCTSkipIf(true, "通常以外の挨拶はまだ実装されていない")
        let greeting = Model().greetingText
        XCTAssertEqual(greeting, "おい 💢")
    }

}
