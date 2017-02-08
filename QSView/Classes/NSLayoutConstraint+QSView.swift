//
//  NSLayoutConstraint+QSView.swift
//  Pods
//
//  Created by Benjamin on 07/12/2016.
//
//

import UIKit

@IBDesignable public extension NSLayoutConstraint {
    
    @IBInspectable public var constant35: CGFloat {
        get {
            return self.constant
        }
        set(newValue) {
            if UIDevice.isDevice35() {
                self.constant = newValue
            }
        }
    }
    
    @IBInspectable public var constant40: CGFloat {
        get {
            return self.constant
        }
        set(newValue) {
            if UIDevice.isDevice40() {
                self.constant = newValue
            }
        }
    }
    
    @IBInspectable public var constant47: CGFloat {
        get {
            return self.constant
        }
        set(newValue) {
            if UIDevice.isDevice47() {
                self.constant = newValue
            }
        }
    }
    
    @IBInspectable public var constant55: CGFloat {
        get {
            return self.constant
        }
        set(newValue) {
            if UIDevice.isDevice55() {
                self.constant = newValue
            }
        }
    }
}
