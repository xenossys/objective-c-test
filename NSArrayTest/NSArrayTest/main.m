//
//  main.m
//  NSArrayTest
//
//  Created by paypro on 2020/12/12.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *month = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", nil];
        
//        for (int i =0; i<[month count]; i++) {
//            NSLog(@"MONTH : %@", [month objectAtIndex:i]);
//        }
        for (NSString *strTemp in month) {
            NSLog(@"month : %@", strTemp);
        }
        
        NSMutableArray *mmonth = [NSMutableArray arrayWithArray:month];
        
        [mmonth addObject:@"12"];
        for (NSString *strTemp in mmonth) {
              NSLog(@"mmonth : %@", strTemp);
          }
        
    }
    return 0;
}
