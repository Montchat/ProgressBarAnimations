//
//  TextFieldDelegate.swift
//  ProgressBars
//
//  Created by Joe E. on 3/25/16.
//  Copyright © 2016 Montchat. All rights reserved.
//

import Foundation
import UIKit

extension ViewController : UITextFieldDelegate {
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.becomeFirstResponder() ;
        
        UIView.animateWithDuration(0.33) { () -> Void in textField.inputAccessoryView?.alpha = 1 }
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        textField.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
        
    }
    
    func addInputAccessoryViewToTextField(textField:UITextField) {
        let button = UIButton(frame:CGRect(x: view.frame.origin.x, y:view.frame.origin.y, width: view.frame.width, height: 60))
        button.backgroundColor = UIColor(red: 0.29, green: 0.29, blue: 0.29, alpha: 1)
        button.setTitle("confirm", forState: UIControlState.Normal)
        button.titleLabel?.textColor = UIColor.whiteColor()
        button.addTarget(self, action: "confirmTextField", forControlEvents: .TouchUpInside)
        button.alpha = 0 
        
        textField.inputAccessoryView = button
        
    }
    
    func confirmTextField() {
        guard let textField = self.progressAmountTextField else { return }
        guard let text = textField.text else { return } ; guard let double = Double(text) else { return } ; let integer = Int(double)
        print(integer)
        
        if integer > 100 { return } // don't want values above 100
        
        animateProgress(with: integer) 
        
//        let progressViews:[ProgressView] = [ progressView, progressView2, progressView3, progressView4]
        
//        for progressView in progressViews { progressView.progressAmount = CGFloat(integer) ; print(progressView.progressAmount) }
//        progressBar.progressAmount = CGFloat(integer)
        
    }
    
}