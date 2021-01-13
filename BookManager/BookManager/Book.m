//
//  Book.m
//  BookManager
//
//  Created by JaewooByun on 2021/01/12.
//

#import "Book.h"

@implementation Book
@synthesize name, genre, author;

-(void)bookPrint{
    NSLog(@"Name : %@",name);
    NSLog(@"Genre : %@",genre);
    NSLog(@"Author : %@",author);
}

@end
