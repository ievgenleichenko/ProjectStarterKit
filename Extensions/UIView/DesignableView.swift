//
//  DesignableView.swift
//  GradeMiners
//
//  Created by Evgeniy Leychenko on 17.08.2018.
//  Copyright © 2018 TAS. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            return layer.borderColor?.UIColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}

extension UIView {
    
    @available(iOS 11.0, *)
    func round(corners: CACornerMask, radius: Float) {
        layer.maskedCorners = corners
        layer.cornerRadius = CGFloat(radius)
        layer.masksToBounds = true
    }
    
    @available(iOS 10.0, *)
    func round(corners: UIRectCorner, radius: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        
        layer.mask = shape
    }
}

extension CGColor {
    fileprivate var UIColor: UIKit.UIColor {
        return UIKit.UIColor(cgColor: self)
    }
}
