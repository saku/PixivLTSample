//
//  SwiftFunctions.swift
//  PixivLTSample
//
//  Created by saku on 2014/10/03.
//  Copyright (c) 2014 Yoichiro Sakurai. All rights reserved.
//

import Foundation

func showSwiftAlertView(vc : UIViewController) -> Void {
    var alert : UIAlertController = UIAlertController(title: "title", message: "swift alert", preferredStyle: .Alert)
    alert.addAction(UIAlertAction(title: "ok", style: .Default, handler: nil))
    vc.presentViewController(alert, animated: true, completion: nil)
}

extension NSObject {
    func showSwiftObjectAlertView(vc : UIViewController) -> Void {
        var alert : UIAlertController = UIAlertController(title: "title", message: "swift alert", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "ok", style: .Default, handler: nil))
        vc.presentViewController(alert, animated: true, completion: nil)
    }
}
