//
//  File.swift
//  ProgressBars
//
//  Created by Joe E. on 3/25/16.
//  Copyright © 2016 Montchat. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func animateProgress(with integer: Int) {
        newProgressAmount = CGFloat(Double(integer))
    
        let _ = NSTimer.scheduledTimerWithTimeInterval(0.000001, target: self, selector: "updateProgressBar:", userInfo: nil, repeats: true)
        let _ = NSTimer.scheduledTimerWithTimeInterval(0.000001, target: self, selector: "updateProgressViews:", userInfo: nil, repeats: true)

    }
    
    func updateProgressBar(_timer: NSTimer) {
        
        guard let newValue = newProgressAmount else { return }
        
        if progressBar.progressAmount == newValue { _timer.invalidate() ; print("timer invalidated") } // if the oldValue is the same as the newValue, stop the animation
        
        if progressBar.progressAmount < newValue { print("working") ; progressBar.progressAmount = progressBar.progressAmount + CGFloat(1) }
        if progressBar.progressAmount > newValue { print("working") ; progressBar.progressAmount = progressBar.progressAmount - CGFloat(1) }
        
    }
    
    func updateProgressViews(_timer:NSTimer) {
        
        guard let newValue = newProgressAmount else { return }
        
        let progressViews:[ProgressView] = [ progressView, progressView2, progressView3, progressView4]

        for progressView in progressViews {
            if progressView.progressAmount == newValue { _timer.invalidate() ; print("timer invalidated") } // if the oldValue is the same as the newValue, stop the animation
            
            if progressView.progressAmount < newValue { print("working") ; progressView.progressAmount = progressView.progressAmount + CGFloat(1) }
            if progressView.progressAmount > newValue { print("working") ; progressView.progressAmount = progressView.progressAmount - CGFloat(1) }
            
        }
        
    }
    
}

