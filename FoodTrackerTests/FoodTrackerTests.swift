//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Paul Kitchener on 6/9/16.
//  Copyright © 2016 Code & Apps. All rights reserved.
//

import UIKit
import XCTest

class FoodTrackerTests: XCTestCase {

    // MARK: FoodTracker Tests

    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)

        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")

        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }
}