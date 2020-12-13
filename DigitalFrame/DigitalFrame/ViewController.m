//
//  ViewController.m
//  DigitalFrame
//
//  Created by paypro on 2020/12/13.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView, toggleButton, speedSlider, speedLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *cuteImage = [[NSArray alloc] initWithObjects:
                          [UIImage imageNamed:@"1.jpg"],
                          [UIImage imageNamed:@"2.jpg"],
                          [UIImage imageNamed:@"3.jpg"],
                          [UIImage imageNamed:@"4.jpg"],
                          [UIImage imageNamed:@"5.jpg"],
                          [UIImage imageNamed:@"6.jpg"],
                          [UIImage imageNamed:@"7.jpg"],
                          [UIImage imageNamed:@"8.jpg"],
                          [UIImage imageNamed:@"9.jpg"],
                          [UIImage imageNamed:@"10.jpg"],
                          [UIImage imageNamed:@"11.jpg"],
                          [UIImage imageNamed:@"12.jpg"],
                          [UIImage imageNamed:@"13.jpg"],
                          [UIImage imageNamed:@"14.jpg"],
                          [UIImage imageNamed:@"15.jpg"],
                          nil];
    imageView.animationImages = cuteImage;
    imageView.animationDuration = 15.0;
   
}

-(IBAction)toggleAction:(id)sender{
    if(imageView.isAnimating){
        [imageView stopAnimating];
        [toggleButton setTitle:@"Start" forState:UIControlStateNormal];
    
    }else{
       
        [imageView startAnimating];
        [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    }
}

-(IBAction)changeSpeedAction:(id)sender{
    imageView.animationDuration = 15 - speedSlider.value;
    [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    [imageView startAnimating];
    NSString *str = [[NSString alloc]initWithFormat:@"%.2f", speedSlider.value];
    speedLabel.text = str;
}

@end
