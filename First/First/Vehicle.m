//
//  Vehicle.m
//  First
//
//  Created by paypro on 2020/12/12.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle
@synthesize wheels;  // synthesize를 추가 안해줘도 되지만 ... 그냥 편의상 표현해줌.
@synthesize seats;

-(void)setWheels:(int)w Seat:(int)s{
    wheels = w;
    seats = s;
}
//-(void)setwheels:(int) w{
//    wheels = w;
//}
//-(void)setSeats:(int) s{
//    seats = s;
//}
//
//-(int)wheels{
//    return wheels;
//}
//-(int)seats{
//    return seats;
//}

@end
