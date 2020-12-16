//
//  ViewController.m
//  MiniBrowser
//
//  Created by paypro on 2020/12/15.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize bookmarkSegmentedControl, urlTextField, mainWebView, activityIndicatorView;
- (void)viewDidLoad {
    NSString *urlString = @"http://www.facebook.com";
    [super viewDidLoad];
   
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;
  
    
    // Do any additional setup after loading the view.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    NSLog(@"눌림");
    NSString *urlString = urlTextField.text;
    
    if(![urlString hasPrefix:@"http://"]){
        urlString = [[NSString alloc] initWithFormat:@"http://%@", urlString];
    }
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)bookmarkAction:(id)sender {
    NSString *bookmarkURL = [bookmarkSegmentedControl titleForSegmentAtIndex:bookmarkSegmentedControl.selectedSegmentIndex];
    NSString *urlString = [[NSString alloc] initWithFormat:@"http://www.%@.com", bookmarkURL];
    urlTextField.text = urlString;
//    NSString *urlString = [bookmarkSegmentedControl titleForSegmentAtIndex:bookmarkSegmentedControl.selectedSegmentIndex];
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
}

- (void) webViewDidStartLoad:(UIWebView *)webView{
     [activityIndicatorView startAnimating];
}

- (void) webViewDidFinishLoad:(UIWebView *)webView{
      [activityIndicatorView stopAnimating];
}



@end
