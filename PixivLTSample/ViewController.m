//
//  ViewController.m
//  PixivLTSample
//
//  Created by saku on 2014/09/28.
//  Copyright (c) 2014年 Yoichiro Sakurai. All rights reserved.
//

#import "ViewController.h"
#import "PixivLTSample-Swift.h"

static NSArray *selection;

@interface SelectionTableViewCell : UITableViewCell
@end

@implementation SelectionTableViewCell
@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    selection = @[
                  @"BaseObjc",
                  @"BaseSwift",
                  @"ObjcExtendObjc",
                  @"SwiftExtendSwift",
                  @"ObjcExtendSwift",
                  @"SwiftExtendObjc",
                  ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return selection.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = selection[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    NSString *className = [NSString stringWithFormat:@"%@ViewController", selection[indexPath.row]];
    Class class = [[self class] classFromString:className];
    UIViewController *vc = [[class alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

+ (Class)classFromString:(NSString *)className {
    Class class = NSClassFromString(className);
    if (!class) {
        // swift class will be _TtC[appNameLength][appName][classNameLength][className]
        NSString *appName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"];
        NSString *classStringName = [NSString stringWithFormat:@"_TtC%lu%@%lu%@", appName.length, appName, className.length, className];
        class = NSClassFromString(classStringName);
    }

    return class;
}

@end
