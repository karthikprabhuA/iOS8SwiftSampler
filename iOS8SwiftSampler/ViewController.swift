//
//  ViewController.swift
//  iOS8SwiftSampler
//
//  Created by Karthik Prabhu Alagu on 10/07/14.
//  Copyright (c) 2014 Cognizant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableViewData:[String] = ["UIActivityIndicator","UIAlertView","UIActionSheet","UIButton"];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        // Dispose of any resources that can be recreated.
    }
    

    
    //UItableView datasource 
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewData.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "KPHeaderCell");
        cell.textLabel.text = self.tableViewData[indexPath.row];
        return cell;
     }
    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String!
    {
        return "iOS8 Swift programming sample";
    }
    //UItableView delegates
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 44;
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("SELECTED INDEX \(indexPath.row)");
        switch (indexPath.row) {
        case 0:
                let secondViewController = self.storyboard.instantiateViewControllerWithIdentifier("KPActivityIndicatorViewController") as KPActivityIndicatorViewController;
                self.navigationController.pushViewController(secondViewController, animated: true);
            break;
            
        default:
            break;
        }
    }

}

