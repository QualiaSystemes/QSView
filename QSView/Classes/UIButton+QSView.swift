//
//  UIButton+QSView.swift
//  Pods
//
//  Created by Benjamin on 07/12/2016.
//
//

import UIKit

public extension UIButton {
    
    @IBInspectable public var fontSize35: CGFloat {
        get {
            return self.fontSize35
        }
        set(newValue) {
            if UIDevice.isDevice35() {
                self.titleLabel?.font = UIFont(name: (self.titleLabel?.font.fontName)!, size: newValue)
            }
        }
    }
    
    @IBInspectable public var fontSize40: CGFloat {
        get {
            return self.fontSize40
        }
        set(newValue) {
            if UIDevice.isDevice40() {
                self.titleLabel?.font = UIFont(name: (self.titleLabel?.font.fontName)!, size: newValue)
            }
        }
    }
    
    @IBInspectable public var fontSize47: CGFloat {
        get {
            return self.fontSize47
        }
        set(newValue) {
            if UIDevice.isDevice47() {
                self.titleLabel?.font = UIFont(name: (self.titleLabel?.font.fontName)!, size: newValue)
            }
        }
    }
    
    @IBInspectable public var fontSize55: CGFloat {
        get {
            return self.fontSize55
        }
        set(newValue) {
            if UIDevice.isDevice55() {
                self.titleLabel?.font = UIFont(name: (self.titleLabel?.font.fontName)!, size: newValue)
            }
        }
    }
}
