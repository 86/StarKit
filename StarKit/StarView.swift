//
//  StarView.swift
//  StarKit
//
//  Created by daisuke yamanaka on 2015/10/10.
//  Copyright (c) 2015年 triaedz. All rights reserved.
//

import UIKit

@IBDesignable

class StarView: UIView {
    
    @IBInspectable var on :Bool = false
    
    override func awakeFromNib() {
        let gesture = UITapGestureRecognizer(target: self, action: "tapped:")
        self.addGestureRecognizer(gesture)
    }
    
    override func drawRect(rect: CGRect) {
        // Drawing code
        StarKit.drawStar(frame: rect, on: on)
    }
    
    func tapped(sender: AnyObject) {
        on = !on
        self.setNeedsDisplay()
        UIView.animateWithDuration(0.1, animations: { () -> Void in
                self.transform = CGAffineTransformMakeScale(1.1, 1.1)
            }, completion: { (Bool completed) -> Void in
                self.transform = CGAffineTransformIdentity
        })
    }

}
