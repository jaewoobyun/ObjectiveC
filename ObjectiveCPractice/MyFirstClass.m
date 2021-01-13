//
//  MyFirstClass.m
//  ObjectiveCPractice
//
//  Created by JaewooByun on 2021/01/07.
//

//#import <Foundation/Foundation.h>
#import "MyFirstClass.h"

@implementation MyFirstClass

@synthesize myFirstInt, myName;

// 호출되면 로그를 남긴다.
- (void) myFirstMethod{
    NSLog(@"It is instance method");
}

// mySecret 인스턴스 변수를 설정해준다 (setter)
- (void) setMySecret: (NSString *)secret{
    mySecret = [NSString stringWithString:secret];
}

// mySecret 인스턴스 변수를 반환한다 (getter)
- (NSString *) getMySecret{
    return mySecret;
}

// 호출되면 로그를 남긴다.
+ (void) itIsClassMethod{
    NSLog(@"It is class method. It works without alloc or init");
}

@end
