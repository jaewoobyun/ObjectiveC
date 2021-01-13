//
//  main.m
//  NSArrayTest
//
//  Created by JaewooByun on 2021/01/12.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSArray
        
        NSArray *month = [[NSArray alloc]initWithObjects:@"Jan", @"Feb", @"March", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec", nil];
        
//        for (int i=0; i<[month count]; i++) {
//            NSLog(@"month : %@", [month objectAtIndex:i]);
//        }
        
        for (NSString *strTemp in month) {
            NSLog(@"month : %@", strTemp);
        }
        
        // MutableArray
        
        NSMutableArray *mmonth = [NSMutableArray arrayWithArray:month];
        
        [mmonth addObject:@"October"];
        [mmonth addObject:@"November"];
        [mmonth addObject:@"December"];
        
        for (NSString *strTemp in mmonth) {
            NSLog(@"mmonth : %@", strTemp);
        }
        
    }
    return 0;
}
