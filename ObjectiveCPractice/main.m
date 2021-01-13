//
//  main.m
//  ObjectiveCPractice
//
//  Created by JaewooByun on 2021/01/07.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        int     val_integer = 0;
        float   val_float = 0.0f;
        double  val_double = 0.0;
        char    val_char = 'C';
        
        int     int_array[3] = {1, 2, 3};
        float   float_array[2] = { 0.1f, 0.8353f };
        double  double_array[4] = { 0.00343, 0.3324, 0.342525, 0.34322 };
        char    char_array[5] = { 'h', 'e', 'y', '!', '\0'};
        
        NSLog(@"first int   %d  ", val_integer);
        NSLog(@"first float %f  ", val_float);
        NSLog(@"first double %d ", val_double);
        NSLog(@"first char   %c \n", val_char);
        
        NSLog(@"Integer can be converted to character   %c  ", val_integer);
        NSLog(@"Character can be converted to integer   %d  \n", val_char);
        
        NSLog(@"Array of integer int_array[0] : %d, int_array[1] : %d, int_array[2] : %d \n", int_array[0], int_array[1], int_array[2]);
        
        NSLog(@"Array of float float_array[0] : %f, float_array[1] : %f, float_array[2] : %f \n", float_array[0], float_array[1], float_array[2]);
        
        NSLog(@"Array of double double_array[0] : %lf, double_array[1] : %lf, double_array[2] : %lf \n", double_array[0], double_array[1], double_array[2]);
        
        NSLog(@"Array of character char_array[0] : %c, char_array[1] : %c, char_array[2] : %c \n", char_array[0], char_array[1], char_array[2]);
        
        NSLog(@"Character array can be used as String : %s\n\n", char_array);
        
        
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
