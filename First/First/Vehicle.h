//
//  Vehicle.h
//  First
//
//  Created by JaewooByun on 2021/01/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 선언부
@interface Vehicle : NSObject
{
        // member variable
        //    int wheels;
        //    int seats;
}

    // member method

@property int wheels;
@property int seats;

-(void)setWheels:(int)w Seats:(int)s;


    //@property (getter=getWheels,setter=wheels:) int wheels; // getter, setter 재정의 방법.

    //-(void)setWheels:(int)w; //setter
    //-(void)setSeats:(int)s;
    //-(int)wheels; // getter
    //-(int)seats;
-(void)print;
@end

NS_ASSUME_NONNULL_END
