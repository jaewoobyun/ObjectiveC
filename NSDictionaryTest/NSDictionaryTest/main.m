//
//  main.m
//  NSDictionaryTest
//
//  Created by JaewooByun on 2021/01/12.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSDictionary
        NSDictionary * dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"변재우", @"이름", @"모름", @"나이", nil];
        NSLog(@"name : %@", [dic objectForKey:@"이름"]);
        NSLog(@"age : %@", [dic objectForKey:@"나이"]);
        
        // NSMutableDictionary 가변 딕셔너리
        NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
        
        [mdic setObject:@"한국" forKey:@"사는곳"];
        [mdic setObject:@"살색" forKey:@"얼굴색"];
        
        NSLog(@"name : %@", [dic objectForKey:@"이름"]);
        NSLog(@"age : %@", [dic objectForKey:@"나이"]);
        NSLog(@"location : %@", [mdic objectForKey:@"사는곳"]);
        NSLog(@"face color : %@", [mdic objectForKey:@"얼굴색"]);
        
        
        
    }
    return 0;
}
