//
//  FirstViewController.m
//  TabbarEx
//
//  Created by paypro on 2020/12/16.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize labelTitle;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onPressAction:(id)sender {
    NSLog(@"버튼 누름");
    labelTitle.text = @"1";
}
@end
