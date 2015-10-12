//
//  UIViewUtil.swift
//  StarKit
//
//  Created by daisuke yamanaka on 2015/10/11.
//  Copyright (c) 2015年 triaedz. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable

class IBDesignableView: UIView {
    
}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(CGColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.CGColor
        }
    }
}