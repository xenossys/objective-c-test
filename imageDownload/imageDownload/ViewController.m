//
//  ViewController.m
//  imageDownload
//
//  Created by paypro on 2020/12/18.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

// 비동기 통신 방식 두가지
// handle block : block 코딩 swift 클로저
// session의 delegate method를 받아서 처리

@implementation ViewController
@synthesize imageView, activityIndicatorView, downloadProgressView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)cancelAction:(id)sender {
    [downloadTask cancel];
    imageView.image = nil;
    [downloadProgressView setProgress:0.0 animated:NO];

}

- (IBAction)resumeAction:(id)sender {
      [downloadTask resume];
}


- (IBAction)suspendAction:(id)sender {
     [downloadTask suspend];
}

- (IBAction)downloadAction:(id)sender {
    imageView.image = nil;
    [downloadProgressView setProgress:0.0 animated:NO];
    [activityIndicatorView startAnimating];
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg"]];
    //  block 처리법
//                              completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
//        self.imageView.image= [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
//        [self.activityIndicatorView stopAnimating];
//
//                            }
//                    ];
    [downloadTask resume];
}
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite{
//    NSLog(@"totalBytesExpectedToWrite : %lli", totalBytesExpectedToWrite);
//    NSLog(@"bytesWritten : %lli", bytesWritten);
//    NSLog(@"totalBytesWritten : %lli", totalBytesWritten);

    float progress = (float)totalBytesWritten/(float)totalBytesExpectedToWrite;
    [downloadProgressView setProgress:progress animated:YES];
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location{
    NSData *data = [NSData dataWithContentsOfURL:location];
    imageView.image =[UIImage imageWithData:data];
    [activityIndicatorView stopAnimating];
}
@end
