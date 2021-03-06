//
//  main.m
//  First
//
//  Created by JaewooByun on 2021/01/12.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Vehicle *hello = [[Vehicle alloc]init]; // create instance object
        
        //[Receiver Message] // invoke sent
        
        // Dot 연산자 사용법
//        hello.wheels = 4;
//        hello.seats = 2;
        
        // 원래 표현 방식
//        [hello setWheels:4];
//        [hello setSeats:2];
        
//        [hello print];
        
        [hello setWheels:4 Seats:2];
        
        hello.wheels = 3;
        
        if (hello.wheels == 4) {
            NSLog(@"wheels : 4");
        } else if (hello.wheels == 3){
            NSLog(@"wheels : 3");
        } else {
            NSLog(@"no");
        }
        
        switch (hello.seats) {
            case 4:
                NSLog(@"wheels : 4");
                break;
            case 2:
                NSLog(@"seats : 2");
                
            default:
                NSLog(@"NO");
                break;
        }
        
        for (int i=0; i<hello.wheels; i++) {
            NSLog(@"wheels : %i", i);
        }
        
        int i=0;
        while (i<hello.seats) {
            NSLog(@"seats : %i", i);
            i++;
        }
        
        NSLog(@"wheels : %i, seats: %i", [hello wheels], [hello seats]);
    }
    return 0;
}
