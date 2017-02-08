//
//  UIView+QSView.swift
//  Pods
//
//  Created by Benjamin on 07/12/2016.
//
//

import UIKit

@IBDesignable public extension UIView {
    
    @IBInspectable public var cornerRadius: CGFloat {
        get {
            return self.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat {
        get {
            return self.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
    
    @IBInspectable public var shadowOpacity: Float {
        get {
            return self.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable public var shadowRadius: CGFloat {
        get {
            return self.shadowRadius
        }
        set {
            self.layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable public var shadowOffset: CGSize {
        get {
            return self.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
        }
    }
    
    public func findFirstResponder() -> UIView? {
        if self.isFirstResponder {
            return self
        }
        
        for subView: UIView in self.subviews {
            let view: UIView? = subView.findFirstResponder()
            if view != nil {
                return view
            }
        }
        
        return nil
    }
    
    public func findAndResignFirstResponder() {
        let firstResponder: UIView? = self.findFirstResponder()
        if firstResponder != nil {
            firstResponder!.resignFirstResponder()
        }
    }
    
    public func bindViewToBoundsWithConstraints(targetView: UIView) {
        targetView.translatesAutoresizingMaskIntoConstraints = false
        
        let constraint1: NSLayoutConstraint = NSLayoutConstraint(item: targetView,
                                                                 attribute: NSLayoutAttribute.top,
                                                                 relatedBy: NSLayoutRelation.equal,
                                                                 toItem: self,
                                                                 attribute: NSLayoutAttribute.top,
                                                                 multiplier: 1,
                                                                 constant: 0)
        let constraint2: NSLayoutConstraint = NSLayoutConstraint(item: targetView,
                                                                 attribute: NSLayoutAttribute.trailing,
                                                                 relatedBy: NSLayoutRelation.equal,
                                                                 toItem: self,
                                                                 attribute: NSLayoutAttribute.trailing,
                                                                 multiplier: 1,
                                                                 constant: 0)
        let constraint3: NSLayoutConstraint = NSLayoutConstraint(item: targetView,
                                                                 attribute: NSLayoutAttribute.bottom,
                                                                 relatedBy: NSLayoutRelation.equal,
                                                                 toItem: self,
                                                                 attribute: NSLayoutAttribute.bottom,
                                                                 multiplier: 1,
                                                                 constant: 0)
        let constraint4: NSLayoutConstraint = NSLayoutConstraint(item: targetView,
                                                                 attribute: NSLayoutAttribute.leading,
                                                                 relatedBy: NSLayoutRelation.equal,
                                                                 toItem: self,
                                                                 attribute: NSLayoutAttribute.leading,
                                                                 multiplier: 1,
                                                                 constant: 0)
        self.addConstraint(constraint1)
        self.addConstraint(constraint2)
        self.addConstraint(constraint3)
        self.addConstraint(constraint4)
    }
}
