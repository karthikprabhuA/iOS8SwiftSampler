//
//  KPActivityIndicator.swift
//  iOS8SwiftSampler
//
//  Created by Karthik Prabhu Alagu on 10/07/14.
//  Copyright (c) 2014 Cognizant. All rights reserved.
//

import Foundation
import UIKit

class KPActivityIndicatorViewController:UIViewController
{
    var activityIndicator :UIActivityIndicatorView;
    override func viewDidLoad()
    {
        super.viewDidLoad();
        self.title = "UIActivityIndicatorView";
    }
    init(coder aDecoder: NSCoder!)
    {
         activityIndicator = UIActivityIndicatorView(frame: CGRectMake(0,0, 50, 50)) as UIActivityIndicatorView;
        super.init(coder: aDecoder);
    }
    @IBAction
    func buttonClicked(button:UIButton)
    {
        if(!button.selected)
        {
            button.selected = true;
            button.setTitle("Stop", forState: UIControlState.Normal);
            startActivityIndicator();
        }
        else
        {
            button.selected = false;
            button.setTitle("Start", forState: UIControlState.Normal);
            stopActivityIndicator();
        }
    }
    
    func startActivityIndicator()
    {
        activityIndicator.center = self.view.center;
        activityIndicator.hidesWhenStopped = true;
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray;
        self.view.addSubview(activityIndicator);
        activityIndicator.startAnimating();
    }
    
    func stopActivityIndicator()
    {
        activityIndicator.stopAnimating();
    }
}

