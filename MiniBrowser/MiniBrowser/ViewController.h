//
//  ViewController.h
//  MiniBrowser
//
//  Created by paypro on 2020/12/15.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UIWebView *mainWebView;
- (IBAction)bookmarkAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;


@end

