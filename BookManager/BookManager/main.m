//
//  main.m
//  BookManager
//
//  Created by JaewooByun on 2021/01/12.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Book
        Book *book1 = [[Book alloc]init];
        book1.name = @"햄릿";
        book1.genre = @"비극";
        book1.author = @"셰익스피어";
        
//        [book1 bookPrint];
        
        Book *book2 = [[Book alloc]init];
        book2.name = @"햄릿2";
        book2.genre = @"비극2";
        book2.author = @"셰익스피어2";
        
//        [book2 bookPrint];
        
        Book *book3 = [[Book alloc]init];
        book3.name = @"햄릿3";
        book3.genre = @"비극3";
        book3.author = @"셰익스피어3";
        
//        [book3 bookPrint];
        
        
        //BookManager
        BookManager *myBook = [[BookManager alloc]init];
        
        [myBook addBook:book1];
        [myBook addBook:book2];
        [myBook addBook:book3];
        
//        [myBook showAllBook];
        
        NSLog(@"%@", [myBook showAllBook]);
        NSLog(@"count : %li", [myBook countBook]);
        
        NSString *strTemp = [myBook findBook:@"햄릿"];
        if (strTemp != nil) {
            NSLog(@"%@", strTemp);
        } else {
            NSLog(@"찾으시는 책이 없네요");
        }
        
        NSString *removeResult = [myBook removeBook:@"햄릿3"];
        if (removeResult != nil ) {
            NSLog(@"%@ 책을 지웠습니다.", removeResult);
        } else {
            NSLog(@"지우려는 책이 없네요");
        }
        
        NSLog(@"%@", [myBook showAllBook]);
        NSLog(@"count : %li", [myBook countBook]);
        
    }
    return 0;
}
