//
//  UITextView+QSView.swift
//  Pods
//
//  Created by Benjamin on 07/12/2016.
//
//

import UIKit

public extension UITextView {

    @IBInspectable public var fontSize35: CGFloat {
        get {
            return self.fontSize35
        }
        set(newValue) {
            if UIDevice.isDevice35() {
                self.font = UIFont(name: (self.font?.fontName)!, size: newValue)
            }
        }
    }
    
    @IBInspectable public var fontSize40: CGFloat {
        get {
            return self.fontSize40
        }
        set(newValue) {
            if UIDevice.isDevice40() {
                self.font = UIFont(name: (self.font?.fontName)!, size: newValue)
            }
        }
    }
    
    @IBInspectable public var fontSize47: CGFloat {
        get {
            return self.fontSize47
        }
        set(newValue) {
            if UIDevice.isDevice47() {
                self.font = UIFont(name: (self.font?.fontName)!, size: newValue)
            }
        }
    }
    
    @IBInspectable public var fontSize55: CGFloat {
        get {
            return self.fontSize55
        }
        set(newValue) {
            if UIDevice.isDevice55() {
                self.font = UIFont(name: (self.font?.fontName)!, size: newValue)
            }
        }
    }
}
