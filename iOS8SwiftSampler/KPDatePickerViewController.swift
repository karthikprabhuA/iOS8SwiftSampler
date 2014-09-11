//
//  KPDatePickerViewController.swift
//  iOS8SwiftSampler
//
//  Created by Karthik Prabhu Alagu on 11/09/14.
//  Copyright (c) 2014 Cognizant. All rights reserved.
//

import Foundation
import UIKit

class KPDatePickerViewController : UIViewController
{
     var datePicker:UIDatePicker!;
    @IBOutlet var dateTextField:UITextField!;
    
    override func viewDidLoad()
    {
        var customView:UIView = UIView (frame: CGRectMake(0, 100, 320, 160));
        customView.backgroundColor = UIColor.brownColor();
        datePicker = UIDatePicker(frame: CGRectMake(0, 0, 320, 160));
        customView .addSubview(datePicker);
        dateTextField.inputView = customView;
        var doneButton:UIButton = UIButton (frame: CGRectMake(100, 100, 100, 44));
        doneButton.setTitle("Done", forState: UIControlState.Normal)
        doneButton.addTarget(self, action: "datePickerSelected", forControlEvents: UIControlEvents.TouchUpInside);
        doneButton.backgroundColor = UIColor .blueColor();
        dateTextField.inputAccessoryView = doneButton;
    }
    
    func datePickerSelected()
    {
        dateTextField.text =  datePicker.date.description;
    }
    
}