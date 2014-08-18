//
//  UIView+Gestures.swift
//  Gestures
//
//  Created by Stephen Celis on 8/17/14.
//  Copyright (c) 2014 Stephen Celis. All rights reserved.
//

import UIKit

extension UIView {

    /**
     * Adds a tap gesture to the view with a block that will be invoked whenever
     * the gesture's state changes, e.g., when a tap completes.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The tap gesture.
     */
    public func tapped(callback: UITapGestureRecognizer -> ()) -> UITapGestureRecognizer {
        let tap = UITapGestureRecognizer().any(callback)
        addGestureRecognizer(tap)
        return tap
    }

    /**
     * Adds a tap gesture to the view with a block that will be invoked whenever
     * the view is tapped.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The tap gesture.
     */
    public func tapped(callback: () -> ()) -> UITapGestureRecognizer {
        let tap = UITapGestureRecognizer().on(.Ended) { _ in callback() }
        addGestureRecognizer(tap)
        return tap
    }

    /**
     * Adds a pinch gesture to the view with a block that will be invoked
     * whenever the gesture's state changes.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The pinch gesture.
     */
    public func pinched(callback: UIPinchGestureRecognizer -> ()) -> UIPinchGestureRecognizer {
        let pinch = UIPinchGestureRecognizer().any(callback)
        addGestureRecognizer(pinch)
        return pinch
    }

    /**
     * Adds a pan gesture to the view with a block that will be invoked whenever
     * the gesture's state changes.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The pan gesture.
     */
    public func panned(callback: UIPanGestureRecognizer -> ()) -> UIPanGestureRecognizer {
        let pan = UIPanGestureRecognizer().any(callback)
        addGestureRecognizer(pan)
        return pan
    }

    /**
     * Adds a swipe gesture to the view with a block that will be invoked
     * whenever the gesture's state changes, e.g., when a swipe completes.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The swipe gesture.
     */
    public func swiped(callback: UISwipeGestureRecognizer -> ()) -> UISwipeGestureRecognizer {
        let swipe = UISwipeGestureRecognizer().any(callback)
        addGestureRecognizer(swipe)
        return swipe
    }

    /**
     * Adds a swipe gesture to the view with a block that will be invoked
     * whenever the view is swiped.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The swipe gesture.
     */
    public func swiped(callback: () -> ()) -> UISwipeGestureRecognizer {
        let swipe = UISwipeGestureRecognizer().on(.Ended) { _ in callback() }
        addGestureRecognizer(swipe)
        return swipe
    }

    /**
     * Adds a rotation gesture to the view with a block that will be invoked
     * whenever the gesture's state changes.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The rotation gesture.
     */
    public func rotated(callback: UIRotationGestureRecognizer -> ()) -> UIRotationGestureRecognizer {
        let rotation = UIRotationGestureRecognizer().any(callback)
        addGestureRecognizer(rotation)
        return rotation
    }

    /**
     * Adds a long-press gesture to the view with a block that will be invoked
     * whenever the gesture's state changes, e.g., when a tap completes.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The long-press gesture.
     */
    public func longPressed(callback: UILongPressGestureRecognizer -> ()) -> UILongPressGestureRecognizer {
        let longPress = UILongPressGestureRecognizer().any(callback)
        addGestureRecognizer(longPress)
        return longPress
    }

    /**
     * Adds a long-press gesture to the view with a block that will be invoked
     * whenever the view is long-pressed.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The long-press gesture.
     */
    public func longPressed(callback: () -> ()) -> UILongPressGestureRecognizer {
        let longPress = UILongPressGestureRecognizer().on(.Ended) { _ in callback() }
        addGestureRecognizer(longPress)
        return longPress
    }

}
