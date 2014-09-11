//
//  KPActionSheetViewController.swift
//  iOS8SwiftSampler
//
//  Created by Karthik Prabhu Alagu on 11/09/14.
//  Copyright (c) 2014 Cognizant. All rights reserved.
//

import Foundation
import UIKit

class KPActionSheetViewController : UIViewController,UIActionSheetDelegate
{
  
    
    override func viewDidLoad()
    {

        let actionSheet = UIActionSheet(title: "Are you sure ?", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Done", otherButtonTitles: "Yes", "No")
        actionSheet.showInView(self.view)
    }
    
    func actionSheet(actionSheet: UIActionSheet!, clickedButtonAtIndex buttonIndex: Int)
    {
        switch buttonIndex{
            
        case 0:
            NSLog("Done");
            break;
        case 1:
            NSLog("Cancel");
            break;
        case 2:
            NSLog("Yes");
            break;
        case 3:
            NSLog("No");
            break;
        default:
            NSLog("Default");
            break;
            //Some code here..
            
        }

    }
}