//
//  ECGReactiveContentUIKit.swift
//  
//
//  Created by Neal on 2019/10/13.
//

import Foundation

#if !os(macOS)

import UIKit

extension ECGReactWrapper where Base: UIView {
    
    //MARK:- Size
    /// width
    public var width: CGFloat {
        set {
            let origin = self.base.frame.origin
            let size = self.base.frame.size
            self.base.frame = CGRect.init(x: origin.x, y: origin.y, width: newValue, height: size.height)
        }
        get {
            return self.base.frame.size.width
        }
    }
    
    /// height
    public var height: CGFloat {
        set {
            let origin = self.base.frame.origin
            let size = self.base.frame.size
            self.base.frame = CGRect.init(x: origin.x, y: origin.y, width: size.width, height: newValue)
        }
        get {
            return self.base.frame.size.height
        }
    }
    
    /// Size
    public var size: CGSize {
        set {
            let origin = self.base.frame.origin
            self.base.frame = CGRect.init(x: origin.x, y: origin.y, width: newValue.width, height: newValue.height)
        }
        get {
            return self.base.frame.size
        }
    }
    
    //MARK:- Origin
    /// leading
    public var leading: CGFloat {
        set {
            let origin = self.base.frame.origin
            let size = self.base.frame.size
            self.base.frame = CGRect.init(x: newValue, y: origin.y, width: size.width, height: size.height)
        }
        get {
            return self.base.frame.origin.x
        }
    }
    
    /// topping
    public var topping: CGFloat {
        set {
            let origin = self.base.frame.origin
            let size = self.base.frame.size
            self.base.frame = CGRect.init(x: origin.x, y: newValue, width: size.width, height: size.height)
        }
        get {
            return self.base.frame.origin.y
        }
    }
    
    /// origin
    public var origin: CGPoint {
        set {
            let size = self.base.frame.size
            self.base.frame = CGRect.init(x: newValue.x, y: newValue.y, width: size.width, height: size.height)
        }
        get {
            return self.base.frame.origin
        }
    }
    
}


#endif
