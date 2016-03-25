//
//  ViewController.swift
//  ProgressBars
//
//  Created by Joe E. on 3/25/16.
//  Copyright © 2016 Montchat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: ProgressView!
    @IBOutlet weak var progressView2: ProgressView!
    @IBOutlet weak var progressView3: ProgressView!
    @IBOutlet weak var progressView4: ProgressView!
    
    @IBOutlet weak var progressBar: ProgressBar!
    
    @IBOutlet weak var progressAmountTextField: UITextField!
    
    var timer:NSTimer?
    var newProgressAmount: CGFloat? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sets progressAmountsToZero
        initalizeProgressViews(); initializeProgressBar()
        
        progressAmountTextField.delegate = self
        addInputAccessoryViewToTextField(progressAmountTextField)
        progressAmountTextField.becomeFirstResponder()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

