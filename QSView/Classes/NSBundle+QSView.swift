//
//  NSBundle+QSView.swift
//  Pods
//
//  Created by Benjamin on 07/12/2016.
//
//

import UIKit

public extension Bundle {
    
    public func loadNibWithName(nibName: String) -> UIView? {
        
        // Load nib array from a nib name
        let views: [Any]? = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)
        let finalView: UIView?
        
        // Take the first view if it exists
        if views != nil && views!.count > 0 && views!.first is UIView {
            finalView = views!.first as? UIView
        } else {
            finalView = nil
        }
        
        return finalView!
    }
}
