//
//  ObjcFunctions.m
//  PixivLTSample
//
//  Created by saku on 2014/10/03.
//  Copyright (c) 2014 Yoichiro Sakurai. All rights reserved.
//

#import "ObjcFunctions.h"

void showObjcAlertView() {
    [[[UIAlertView alloc] initWithTitle:@"title"
                                message:@"objc alert"
                               delegate:nil
                      cancelButtonTitle:nil
                      otherButtonTitles:@"ok", nil] show];
}
