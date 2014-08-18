//
//  UIGestureRecognizer+Gestures.swift
//  Gestures
//
//  Created by Stephen Celis on 8/17/14.
//  Copyright (c) 2014 Stephen Celis. All rights reserved.
//

import UIKit

// FIXME: Swift does not yet support the following.
//
// 1. Classes must support Self outside of a return value [rdar://17418795].
//
// 2. Functions must support non-trailing variadic parameters [rdar://12134482].
//
//    extension UIGestureRecognizer {
//
//        public func any(callback: Self -> ()) -> Self {
//            return on(Any, callback)
//        }
//
//        public func on(states: UIGestureRecognizerState..., callback: Self -> ()) -> Self {
//            let responder = Responder(gesture: self)
//            responder.on(states) { tap in callback(tap as UITapGestureRecognizer) }
//            return self
//        }
//
//    }

public protocol Evented {

    func any(callback: Self -> ()) -> Self

    func on(state: UIGestureRecognizerState, _ callback: Self -> ()) -> Self

    func on(states: [UIGestureRecognizerState], _ callback: Self -> ()) -> Self

}

extension UITapGestureRecognizer: Evented {

    /**
     * Takes a callback that will be invoked upon any gesture recognizer state
     * change, returning the gesture itself.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func any(callback: UITapGestureRecognizer -> ()) -> Self {
        return on(Any, callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state change, returning the gesture itself.
     *
     * :param: state The state upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(state: UIGestureRecognizerState, _ callback: UITapGestureRecognizer -> ()) -> Self {
        return on([state], callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state changes, returning the gesture itself.
     *
     * :param: states The states upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(states: [UIGestureRecognizerState], _ callback: UITapGestureRecognizer -> ()) -> Self {
        let responder = Responder(gesture: self)
        responder.on(states) { tap in callback(tap as UITapGestureRecognizer) }
        return self
    }

}

extension UIPinchGestureRecognizer: Evented {

    /**
     * Takes a callback that will be invoked upon any gesture recognizer state
     * change, returning the gesture itself.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func any(callback: UIPinchGestureRecognizer -> ()) -> Self {
        return on(Any, callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state change, returning the gesture itself.
     *
     * :param: state The state upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(state: UIGestureRecognizerState, _ callback: UIPinchGestureRecognizer -> ()) -> Self {
        return on([state], callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state changes, returning the gesture itself.
     *
     * :param: states The states upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(states: [UIGestureRecognizerState], _ callback: UIPinchGestureRecognizer -> ()) -> Self {
        let responder = Responder(gesture: self)
        responder.on(states) { pinch in callback(pinch as UIPinchGestureRecognizer) }
        return self
    }

}

extension UIPanGestureRecognizer: Evented {

    /**
     * Takes a callback that will be invoked upon any gesture recognizer state
     * change, returning the gesture itself.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func any(callback: UIPanGestureRecognizer -> ()) -> Self {
        return on(Any, callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state change, returning the gesture itself.
     *
     * :param: state The state upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(state: UIGestureRecognizerState, _ callback: UIPanGestureRecognizer -> ()) -> Self {
        return on([state], callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state changes, returning the gesture itself.
     *
     * :param: states The states upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(states: [UIGestureRecognizerState], _ callback: UIPanGestureRecognizer -> ()) -> Self {
        let responder = Responder(gesture: self)
        responder.on(states) { pan in callback(pan as UIPanGestureRecognizer) }
        return self
    }

}

extension UISwipeGestureRecognizer: Evented {

    /**
     * Takes a callback that will be invoked upon any gesture recognizer state
     * change, returning the gesture itself.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func any(callback: UISwipeGestureRecognizer -> ()) -> Self {
        return on(Any, callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state change, returning the gesture itself.
     *
     * :param: state The state upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(state: UIGestureRecognizerState, _ callback: UISwipeGestureRecognizer -> ()) -> Self {
        return on([state], callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state changes, returning the gesture itself.
     *
     * :param: states The states upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(states: [UIGestureRecognizerState], _ callback: UISwipeGestureRecognizer -> ()) -> Self {
        let responder = Responder(gesture: self)
        responder.on(states) { tap in callback(tap as UISwipeGestureRecognizer) }
        return self
    }

}

extension UIRotationGestureRecognizer: Evented {

    /**
     * Takes a callback that will be invoked upon any gesture recognizer state
     * change, returning the gesture itself.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func any(callback: UIRotationGestureRecognizer -> ()) -> Self {
        return on(Any, callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state change, returning the gesture itself.
     *
     * :param: state The state upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(state: UIGestureRecognizerState, _ callback: UIRotationGestureRecognizer -> ()) -> Self {
        return on([state], callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state changes, returning the gesture itself.
     *
     * :param: states The states upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(states: [UIGestureRecognizerState], _ callback: UIRotationGestureRecognizer -> ()) -> Self {
        let responder = Responder(gesture: self)
        responder.on(states) { rotation in callback(rotation as UIRotationGestureRecognizer) }
        return self
    }

}

extension UILongPressGestureRecognizer: Evented {

    /**
     * Takes a callback that will be invoked upon any gesture recognizer state
     * change, returning the gesture itself.
     *
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func any(callback: UILongPressGestureRecognizer -> ()) -> Self {
        return on(Any, callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state change, returning the gesture itself.
     *
     * :param: state The state upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(state: UIGestureRecognizerState, _ callback: UILongPressGestureRecognizer -> ()) -> Self {
        return on([state], callback)
    }

    /**
     * Takes a callback that will be invoked upon the given gesture recognizer
     * state changes, returning the gesture itself.
     *
     * :param: states The states upon which to invoke the callback.
     * :param: callback Invoked whenever the gesture's state changes.
     * :returns: The gesture itself (self).
     */
    public func on(states: [UIGestureRecognizerState], _ callback: UILongPressGestureRecognizer -> ()) -> Self {
        let responder = Responder(gesture: self)
        responder.on(states) { longPress in callback(longPress as UILongPressGestureRecognizer) }
        return self
    }

}

private let Any: [UIGestureRecognizerState] = [.Possible, .Began, .Cancelled, .Changed, .Ended, .Failed]

private let responders = NSMapTable.weakToStrongObjectsMapTable()

class Responder: NSObject, UIGestureRecognizerDelegate {

    var callbacks: [UIGestureRecognizerState: [UIGestureRecognizer -> ()]] = [
        .Possible: [],
        .Began: [],
        .Cancelled: [],
        .Changed: [],
        .Ended: [],
        .Failed: []
    ]

    init(gesture: UIGestureRecognizer) {
        super.init()
        responders.setObject(self, forKey: gesture)
        gesture.addTarget(self, action: "recognized:")
        gesture.delegate = self
    }

    func on(states: [UIGestureRecognizerState], _ callback: UIGestureRecognizer -> ()) {
        for state in states {
            callbacks[state]?.append(callback)
        }
    }

    @objc func recognized(gesture: UIGestureRecognizer) {
        for callback in callbacks[gesture.state]! {
            callback(gesture)
        }
    }

    // MARK: - UIGestureRecognizerDelegate

}
