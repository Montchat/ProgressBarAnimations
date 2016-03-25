//
//  InitalizingProgressViews.swift
//  ProgressBars
//
//  Created by Joe E. on 3/25/16.
//  Copyright © 2016 Montchat. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    func initalizeProgressViews() {
        let progressViews:[ProgressView] = [ progressView, progressView2, progressView3, progressView4]
        
        for progressView in progressViews { progressView.progressAmount = 0 }
        
    }
    
    func initializeProgressBar() {
        progressBar.progressAmount = 0
        
    }
    
    
}