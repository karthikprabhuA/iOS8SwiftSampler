//
//  KPAlertViewController.swift
//  iOS8SwiftSampler
//
//  Created by Karthik Prabhu Alagu on 11/09/14.
//  Copyright (c) 2014 Cognizant. All rights reserved.
//

import Foundation
import UIKit

class KPAlertViewController:UIViewController
{
    var alert:UIAlertController!;
    override func viewDidLoad()
    {
        super.viewDidLoad();

    }
    
    @IBAction func showSimpleAlertView() {
    //simple Alert
    
    var alert : UIAlertController = UIAlertController(title: "Alert", message: "iOS8 AlertView", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: { alertAction in
            alert.dismissViewControllerAnimated(true, completion: nil);
            }))
    self.presentViewController(alert, animated: true, completion: nil)

    }
    @IBAction func showAlertView() {
        


        
        
        var alert : UIAlertController = UIAlertController(title: "Alert", message: "Oops iOS8 AlertView changed ):", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: { alertAction in
            alert.dismissViewControllerAnimated(true, completion: nil);
            }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: {alertAction in
            alert.dismissViewControllerAnimated(true, completion: nil);
            }))
        
        alert.addTextFieldWithConfigurationHandler { textField in
            
        }
        self.presentViewController(alert, animated: true, completion: nil);
    }
}