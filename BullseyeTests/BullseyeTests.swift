//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Andres David Serrano Vivas on 28/01/21.
//

import XCTest
@testable import Bullseye
class BullseyeTests: XCTestCase {
    
    var game : Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testScorePisitive()  {
        let guess = game.target + 5
        XCTAssertEqual(game.points(siderValue: guess), 95)
    }
    
    
    func testScoreNegative()  {
        let guess = game.target - 5
        XCTAssertEqual(game.points(siderValue: guess), 95)
    }

}
