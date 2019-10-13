//
//  ECGReactive.swift
//  
//
//  Created by Neal on 2019/10/13.
//

import Foundation

#if !os(macOS)
import UIKit
#else
import AppKit
#endif

public struct ECGReactWrapper<Base> {
    
    public let base: Base
    
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol ECGReactiveCompatible: AnyObject { }

extension ECGReactiveCompatible {
    
    public var nw: ECGReactWrapper<Self> {
        get { return ECGReactWrapper.init(self) }
        set { }
    }
    
}

#if !os(macOS)
extension UIView: ECGReactiveCompatible {}
#else
extension NSView: ECGReactiveCompatible {}
#endif


