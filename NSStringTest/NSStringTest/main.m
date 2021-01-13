//
//  main.m
//  NSStringTest
//
//  Created by JaewooByun on 2021/01/12.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSString *str = [[NSString alloc]init];
//        str = @"This is NSString";
        
        //Convenience Method
//        NSString *str = [[NSString alloc]initWithString:@"This is NSString"];
        
        NSString *str = @"This is NSString";
//        NSLog(@"str : %@", str);
        
        //immutable class
        NSString *result;
        result = [str substringFromIndex:6]; //s NSString
        result = [str substringToIndex:3]; //Thi
        
        result = [[str substringToIndex:11]substringFromIndex:8]; //NSS
        result = [[str substringFromIndex:8]substringToIndex:3]; //NSS
        result = [str substringWithRange:NSMakeRange(8, 3)]; //NSS
        result = [str substringWithRange:NSMakeRange(8, 3)].lowercaseString; //nss
        NSLog(@"result : %@", result);
        
        // Mutable
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        NSLog(@"mstr : %@", mstr);
        
        [mstr appendString:@" and NSMutableString"];
        [mstr insertString:@"Mutable " atIndex:8];
        NSLog(@"mstr : %@", mstr);
        
        
        
    }
    return 0;
}
