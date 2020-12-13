//
//  Vehicle.h
//  First
//
//  Created by paypro on 2020/12/12.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface Vehicle : NSObject{ // 최상위 오브젝트 // main 위에 있어야함. // interface 는 선언부
// member variable // 초기화하면 안됨
//    int wheels;
//    int seats;
}

// member method
@property int wheels;  // getter setter 를 자동으로 생성해준다. 외부 접근을 위해서. // member variable도 생성해준다.
//@property (getter=getWheels, setter=wheels:)int wheels;
@property int seats;
//-(void)setwheels:(int) w;
//-(void)setSeats:(int) s;
//-(int)wheels;
//-(int)seats;
-(void)setWheels:(int)w Seat:(int)s;


@end

NS_ASSUME_NONNULL_END
