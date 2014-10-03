//
//  BaseObjcViewController.m
//  PixivLTSample
//
//  Created by saku on 2014/09/28.
//  Copyright (c) 2014年 Yoichiro Sakurai. All rights reserved.
//

#import "BaseObjcViewController.h"
#import "ObjcFunctions.h"
#import "PixivLTSample-Swift.h"

@interface BaseObjcViewController ()

@end

@implementation BaseObjcViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button;
    button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    button.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2 - 100);
    [button setTitle:@"showObjcAlert" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showObjcAlert) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    button.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2 + 100);
    [button setTitle:@"showSwiftAlert" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showSwiftAlert) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)showObjcAlert {
    showObjcAlertView();
}

- (void)showSwiftAlert {
    //showSwiftAlertView();
    [self showSwiftObjectAlertView:self];
}

@end
