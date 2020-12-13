//
//  main.m
//  First
//
//  Created by paypro on 2020/12/12.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

//@interface Vehicle : NSObject{ // 최상위 오브젝트 // main 위에 있어야함. // interface 는 선언부
//// member variable // 초기화하면 안됨
////    int wheels;
////    int seats;
//}
//
//// member method
//@property int wheels;  // getter setter 를 자동으로 생성해준다. 외부 접근을 위해서. // member variable도 생성해준다.
////@property (getter=getWheels, setter=wheels:)int wheels;
//@property int seats;
////-(void)setwheels:(int) w;
////-(void)setSeats:(int) s;
////-(int)wheels;
////-(int)seats;
//
//
//@end

//@implementation Vehicle
//@synthesize wheels;  // synthesize를 추가 안해줘도 되지만 ... 그냥 편의상 표현해줌.
//@synthesize seats;
////-(void)setwheels:(int) w{
////    wheels = w;
////}
////-(void)setSeats:(int) s{
////    seats = s;
////}
////
////-(int)wheels{
////    return wheels;
////}
////-(int)seats{
////    return seats;
////}
//
//@end


int main(int argc, const char * argv[]) {
    @autoreleasepool { //메모리 영역 자동으로 사라졌다 생겼다. 모든 코드는 여기 안에 작성할 것
        Vehicle *hello = [[Vehicle alloc] init];     // [Vehicle new]; // new는 관례적으로 사용하지 않는다. // 동적할당과 초기화를 따로 한다.
//        [hello setWheels:4];
//        hello.wheels = 4;  // dot연산자도 가능.
//        [hello setSeats:2];
        [hello setWheels:4 Seat:2];
        
        NSLog(@"Wheels : %i, Seats : %i", hello.wheels, [hello seats]);
    }
    return 0;
}
