//
//  ProgressBar.swift
//  FitGenie
//
//  Created by Joe E. on 2/3/16.
//  Copyright © 2016 PlutoniumAppsLLC. All rights reserved.
//

import UIKit

@IBDesignable class ProgressBar: UIView {
    
    @IBInspectable var progressAmount:CGFloat = 0 { didSet { setNeedsDisplay() } }
    
    @IBInspectable var progressColor:UIColor = UIColor.blueColor().colorWithAlphaComponent(1) { didSet { setNeedsDisplay() } }
    
    override func drawRect(rect: CGRect) {
        
        let greyContext = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(greyContext, 4) ; CGContextSetLineCap(greyContext, .Butt)
        UIColor(white: 0.66, alpha: 1).set()
        
        let greyLeft:CGPoint = CGPoint(x: rect.minX, y: rect.midY)
        let max:CGPoint = CGPoint(x: rect.maxX , y: rect.midY)
        let greyProgressPath = UIBezierPath()
        greyProgressPath.moveToPoint(greyLeft) ; greyProgressPath.addLineToPoint(max)
        
        CGContextAddPath(greyContext, greyProgressPath.CGPath)
        CGContextSetLineCap(greyContext, .Round)
        CGContextStrokePath(greyContext)
       
        let context = UIGraphicsGetCurrentContext()
        
        CGContextSetLineWidth(context, 4) ; CGContextSetLineCap(context, .Round)
        
        progressColor.set()
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        
        let left:CGPoint = CGPoint(x: rect.minX, y: rect.midY)
        let right:CGPoint = CGPoint(x: rect.maxX * (progressAmount / 100), y: rect.midY)
        let progressPath = UIBezierPath()
        progressPath.moveToPoint(left) ; progressPath.addLineToPoint(right)
        
        CGContextAddPath(context, progressPath.CGPath)
        CGContextStrokePath(context)
        
    }

}
