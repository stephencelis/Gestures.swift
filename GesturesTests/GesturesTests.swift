//
//  GesturesTests.swift
//  GesturesTests
//
//  Created by Stephen Celis on 8/17/14.
//  Copyright (c) 2014 Stephen Celis. All rights reserved.
//

import UIKit
import XCTest

class GesturesTests: XCTestCase {

    var view = UIView()

    func testTapped() {
        var viewTapped = false

        let tap = view.tapped { _ in
            viewTapped = true
        }

        let gestures = view.gestureRecognizers
        XCTAssertEqual(1, gestures.count)
        let gesture = gestures.first as UIGestureRecognizer
        XCTAssertEqual(tap, gesture)

        let delegate = tap.delegate as Responder
        delegate.recognized(tap)

        XCTAssertTrue(viewTapped)
    }

    func testPinched() {
        var viewPinched = false

        let pinch = view.pinched { _ in
            viewPinched = true
        }

        let gestures = view.gestureRecognizers
        XCTAssertEqual(1, gestures.count)
        let gesture = gestures.first as UIGestureRecognizer
        XCTAssertEqual(pinch, gesture)

        let delegate = pinch.delegate as Responder
        delegate.recognized(pinch)

        XCTAssertTrue(viewPinched)
    }

    func testPanned() {
        var viewPanned = false

        let pan = view.panned { _ in
            viewPanned = true
        }

        let gestures = view.gestureRecognizers
        XCTAssertEqual(1, gestures.count)
        let gesture = gestures.first as UIGestureRecognizer
        XCTAssertEqual(pan, gesture)

        let delegate = pan.delegate as Responder
        delegate.recognized(pan)

        XCTAssertTrue(viewPanned)
    }

    func testSwiped() {
        var viewSwiped = false

        let swipe = view.swiped { _ in
            viewSwiped = true
        }

        let gestures = view.gestureRecognizers
        XCTAssertEqual(1, gestures.count)
        let gesture = gestures.first as UIGestureRecognizer
        XCTAssertEqual(swipe, gesture)

        let delegate = swipe.delegate as Responder
        delegate.recognized(swipe)

        XCTAssertTrue(viewSwiped)
    }

    func testRotated() {
        var viewRotated = false

        let rotation = view.rotated { _ in
            viewRotated = true
        }

        let gestures = view.gestureRecognizers
        XCTAssertEqual(1, gestures.count)
        let gesture = gestures.first as UIGestureRecognizer
        XCTAssertEqual(rotation, gesture)

        let delegate = rotation.delegate as Responder
        delegate.recognized(rotation)

        XCTAssertTrue(viewRotated)

    }

    func testLongPressed() {
        var viewLongPressed = false

        let longPress = view.longPressed { _ in
            viewLongPressed = true
        }

        let gestures = view.gestureRecognizers
        XCTAssertEqual(1, gestures.count)
        let gesture = gestures.first as UIGestureRecognizer
        XCTAssertEqual(longPress, gesture)

        let delegate = longPress.delegate as Responder
        delegate.recognized(longPress)

        XCTAssertTrue(viewLongPressed)
    }

}
