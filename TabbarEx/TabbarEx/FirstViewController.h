//
//  FirstViewController.h
//  TabbarEx
//
//  Created by paypro on 2020/12/16.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstViewController : UIViewController
- (IBAction)onPressAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

@end

NS_ASSUME_NONNULL_END
