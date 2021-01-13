//
//  Vehicle.m
//  First
//
//  Created by JaewooByun on 2021/01/12.
//

#import "Vehicle.h"

// 구현부
@implementation Vehicle
@synthesize wheels; // 없어도 되지만 꼭 해주는 버릇!
@synthesize seats;

    //-(void)setWheels:(int)w{
    //    wheels = w;
    //}
    //
    //-(void)setSeats:(int)s{
    //    seats = s;
    //}
    //
    //-(int)wheels{
    //    return wheels;
    //}
    //
    //-(int)seats{
    //    return seats;
    //}

-(void)setWheels:(int)w Seats:(int)s {
    wheels = w;
    seats = s;
}

-(void)print{
    NSLog(@"wheels : %i, seats: %i", wheels, seats);
}

@end
