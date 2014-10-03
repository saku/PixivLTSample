//
//  BaseSwiftViewController.swift
//  PixivLTSample
//
//  Created by saku on 2014/09/28.
//  Copyright (c) 2014年 Yoichiro Sakurai. All rights reserved.
//

import UIKit

class BaseSwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()

        var button : UIButton;
        button = UIButton(frame: CGRectMake(0, 0, 200, 40))
        button.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2 - 100);
        button.setTitle("showObjcAlert", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.addTarget(self, action: "showObjcAlert", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)

        button = UIButton(frame: CGRectMake(0, 0, 200, 40))
        button.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2 + 100);
        button.setTitle("showSwiftAlert", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.addTarget(self, action: "showSwiftAlert", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
    }
    
    func showObjcAlert() {
        showObjcAlertView()
    }

    func showSwiftAlert() {
        showSwiftAlertView(self)
    }
}
