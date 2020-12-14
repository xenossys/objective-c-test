//
//  ViewController.m
//  SignUpScreen
//
//  Created by paypro on 2020/12/13.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameTextField, idTextField, passwordTextField, telTextField, blogTextField, resultTextView;
- (void)viewDidLoad {
    [super viewDidLoad];
//    nameTextField.delegate = self; // delegate 메소드를 어디로 돌릴것인가? // storyboard에서 처리 가능하다.
//    idTextField.delegate = self;
    // Do any additional setup after loading the view.
}


- (IBAction)signUpAction:(id)sender {
    resultTextView.text = [NSString stringWithFormat:@"%@ 님 가입을 축하 드립니다.", nameTextField];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
// UIResponder 문서 나중에 보기.
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder]; // 포커스를 잃어버리게 한다.
//    NSLog(@"textFieldShouldReturn");
    return YES;
}
@end
