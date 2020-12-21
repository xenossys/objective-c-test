//
//  ViewController.h
//  imageDownload
//
//  Created by paypro on 2020/12/18.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLSessionDownloadDelegate>{
    NSURLSessionTask *downloadTask;
};
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;
@property (weak, nonatomic) IBOutlet UIProgressView *downloadProgressView;
- (IBAction)downloadAction:(id)sender;
- (IBAction)suspendAction:(id)sender;
- (IBAction)resumeAction:(id)sender;
- (IBAction)cancelAction:(id)sender;



@end

