//
//  ProgressView.swift
//  FitGenie
//
//  Created by Joe E. on 2/3/16.
//  Copyright © 2016 PlutoniumAppsLLC. All rights reserved.
//

import UIKit

@IBDesignable class ProgressView: UIView {

    @IBInspectable var progressAmount:CGFloat = 0 { didSet { setNeedsDisplay() }
        
    }
    
    @IBInspectable var progressColor:UIColor = UIColor.blueColor().colorWithAlphaComponent(1) { didSet { setNeedsDisplay() } }
    
    override func drawRect(rect: CGRect) {
        
        let greyContext = UIGraphicsGetCurrentContext()
        
        CGContextSetLineWidth(greyContext, 3) ; CGContextSetLineCap(greyContext, .Butt)
        
        UIColor(white: 0.66, alpha: 1).set()
        
        let greyCenter = CGPoint(x: rect.midX, y: rect.midY) ; let greyRadius = rect.width / 2 - 5
        let greyStartAngle = -CGFloat(M_PI * 2 * 0.25) ; let greyProgressAngle = CGFloat(M_PI * 2) + greyStartAngle
        
        let greyProgressPath = UIBezierPath(arcCenter: greyCenter, radius: greyRadius, startAngle: greyStartAngle, endAngle: greyProgressAngle, clockwise: true)
        CGContextAddPath(greyContext, greyProgressPath.CGPath) ; CGContextStrokePath(greyContext)
        
        let context = UIGraphicsGetCurrentContext()
        
        CGContextSetLineWidth(context, 3) ; CGContextSetLineCap(context, .Round)
        
        progressColor.set()
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = rect.width / 2 - 5
        let startAngle = -CGFloat(M_PI * 2 * 0.25)
        let progressAngle = CGFloat(M_PI * 2) * (progressAmount / 100) + startAngle
        
        let progressPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: progressAngle, clockwise: true)
        
        CGContextAddPath(context, progressPath.CGPath)
        
        CGContextStrokePath(context)
        
    }
    
}


