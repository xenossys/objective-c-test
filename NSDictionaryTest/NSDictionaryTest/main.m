//
//  main.m
//  NSDictionaryTest
//
//  Created by paypro on 2020/12/12.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        // 값을 넣을 때 value key value key 형태로 넣어야 한다. static한 자료 구조는 nil 이 들어가야한다.
        NSDictionary *dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"최강사", @"이름", @"모름", @"나이", nil];
        
        NSLog(@"name : %@", [dic objectForKey:@"이름"]);  // 키를 통해 value 를 return 함
        NSLog(@"age : %@", [dic objectForKey:@"나이"]);
        
        NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
        [mdic setObject:@"한국" forKey:@"사는곳"];
        [mdic setObject:@"약간검정" forKey:@"얼굴색"];
        NSLog(@"name : %@", [mdic objectForKey:@"이름"]);  // 키를 통해 value 를 return 함
        NSLog(@"age : %@", [mdic objectForKey:@"나이"]);
        NSLog(@"location : %@", [mdic objectForKey:@"사는곳"]);  // 키를 통해 value 를 return 함
        NSLog(@"face : %@", [mdic objectForKey:@"얼굴색"]);
        
    }
    return 0;
}
