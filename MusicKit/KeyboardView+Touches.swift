//
//  KeyboardView+Touches.swift
//  MusicKit
//
//  Created by Ben Guo on 9/28/15.
//  Copyright © 2015 benzguo. All rights reserved.
//

import UIKit

/// Touch handling
extension KeyboardView {

    fileprivate func parseTouches(_ touches: Set<UITouch>) -> Set<KeyboardViewTouch> {
        var kvTouches = Set<KeyboardViewTouch>()
        for key in keyViews {
            for touch in touches {
                let kvTouch = KeyboardViewTouch(touch: touch,
                    keyContainer: keyContainer,
                    keyView: key,
                    keyboardView: self)
                kvTouches.insert(kvTouch)
            }
        }
        return kvTouches
    }

    fileprivate func parseKVTouches(_ touches: Set<KeyboardViewTouch>) -> KeyboardTouchDiff {
        var touchesWithinKeys = Set<KeyboardTouch>()
        var touchesLeavingKeys = Set<KeyboardTouch>()
        var keyViewTouchPairs = [(KeyView, KeyboardTouch)]()
        var abandonedKeyViews = [KeyView]()
        for touch in touches {
            let kbTouch = KeyboardTouch(pitch: touch.key.pitch,
                force: touch.force,
                initialLocation: touch.locationInKey,
                keySize: touch.key.bounds.size)
            if touch.locationIsWithinKey {
                touchesWithinKeys.insert(kbTouch)
                keyViewTouchPairs.append((touch.key, kbTouch))
            }
            else if touch.previousLocationIsWithinKey {
                abandonedKeyViews.append(touch.key)
                touchesLeavingKeys.insert(kbTouch)
            }
        }
        return KeyboardTouchDiff(touchesWithinKeys: touchesWithinKeys,
            touchesLeavingKeys: touchesLeavingKeys,
            keyViewTouchPairs: keyViewTouchPairs,
            abandonedKeyViews: abandonedKeyViews)
    }

    fileprivate func updateWithNewTouches(_ pairs: [(KeyView, KeyboardTouch)]) {
        for (key, touch) in pairs { key.force = touch.force }
    }

    fileprivate func updateWithChangedTouches(_ current: [(KeyView, KeyboardTouch)],
        _ abandoned: [KeyView])
    {
        for (key, touch) in current { key.force = touch.force }
        for key in abandoned { key.force = 0 }
    }

    fileprivate func updateWithRemovedTouches(_ pairs: [(KeyView, KeyboardTouch)]) {
        for (key, _) in pairs { key.force = 0 }
    }

    open override func touchesBegan(_ touches: Set<UITouch>,
        with event: UIEvent?)
    {
        let kvTouches = parseTouches(touches)
        let diff = parseKVTouches(kvTouches)
        activeKVTouches = kvTouches
        touchDispatcher.registerNewTouches(diff.touchesWithinKeys)
        updateWithNewTouches(diff.keyViewTouchPairs)
    }

    open override func touchesMoved(_ touches: Set<UITouch>,
        with event: UIEvent?)
    {
        touchesMoved(parseTouches(touches))
    }

    func touchesMoved(_ touches: Set<KeyboardViewTouch>) {
        let diff = parseKVTouches(touches)
        activeKVTouches = touches
        touchDispatcher.registerChangedTouches(diff.touchesWithinKeys,
            diff.touchesLeavingKeys)
        updateWithChangedTouches(diff.keyViewTouchPairs,
            diff.abandonedKeyViews)
    }

    open override func touchesCancelled(_ touches: Set<UITouch>,
        with event: UIEvent?)
    {
        activeKVTouches = Set<KeyboardViewTouch>()
        let kvTouches = parseTouches(touches)
        let diff = parseKVTouches(kvTouches)
        touchDispatcher.registerRemovedTouches(diff.touchesWithinKeys)
        updateWithRemovedTouches(diff.keyViewTouchPairs)
    }

    open override func touchesEnded(_ touches: Set<UITouch>,
        with event: UIEvent?)
    {
        activeKVTouches = Set<KeyboardViewTouch>()
        let kvTouches = parseTouches(touches)
        let diff = parseKVTouches(kvTouches)
        touchDispatcher.registerRemovedTouches(diff.touchesWithinKeys)
        updateWithRemovedTouches(diff.keyViewTouchPairs)
    }
}
