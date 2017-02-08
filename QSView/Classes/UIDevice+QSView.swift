//
//  UIDevice+QSView.swift
//  Pods
//
//  Created by Benjamin on 07/12/2016.
//
//

import UIKit

public extension UIDevice {
    
    public class func isDevice35() -> Bool {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone && UIScreen.main.bounds.size.height == 480
    }
    
    public class func isDevice40() -> Bool {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone && UIScreen.main.bounds.size.height == 568
    }
    
    public class func isDevice47() -> Bool {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone && UIScreen.main.bounds.size.height == 667
    }
    
    public class func isDevice55() -> Bool {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone && UIScreen.main.bounds.size.height == 736
    }
}
