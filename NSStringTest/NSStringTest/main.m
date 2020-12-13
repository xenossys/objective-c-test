//
//  main.m
//  NSStringTest
//
//  Created by paypro on 2020/12/12.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        NSString *str = [[NSString alloc] initWithString:@"this is NSString"];
//        str = @"This is NSString";
        NSString *str = @"this is NSString";
        
        //imutable class -> 중간에 값을 수정할 수 없다. 스스로가 바뀌지는 않는다.
        NSString *result;
        result = [str substringFromIndex:6];
        result = [str substringToIndex:6];
        result = [[str substringToIndex:11] substringFromIndex:8];
        result = [[str substringFromIndex:8] substringToIndex:3];
        result = [[str substringWithRange:NSMakeRange(8, 3)] lowercaseString];
        result = [result uppercaseString];
        NSLog(@"str : %@", result);
        
        
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        [mstr appendString:@" and NSMutableString"];
        [mstr insertString:@"Mutable" atIndex:8];
        
        
        NSLog(@"str : %@", mstr);

    }
    return 0;
}
