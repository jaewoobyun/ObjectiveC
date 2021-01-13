//
//  MyFirstClass.h
//  ObjectiveCPractice
//
//  Created by JaewooByun on 2021/01/07.
//

//#ifndef MyFirstClass_h
//#define MyFirstClass_h
//
//
//#endif /* MyFirstClass_h */


#import <Foundation/Foundation.h>


@interface MyFirstClass : NSObject
{
    int     myFirstInt;     // Int var
    NSString *myName;       //NSString instance
    NSString *mySecret;     //NSString instance
}

    // Make getter, setter
@property (nonatomic, assign)   int     myFirstInt; // assign property
@property (nonatomic, retain)   NSString *myName;   // retain property

    // Innstance Methods..
- (void) myFirstMethod;                     // first method
- (void) setMySecret:(NSString *)secret;    // input my secret
- (NSString *) getMySecret;                 // get my secret

    // Class Methods...
+ (void) itIsClassMethod;                   // first class method

@end
