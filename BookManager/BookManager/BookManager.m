//
//  BookManager.m
//  BookManager
//
//  Created by JaewooByun on 2021/01/12.
//

#import "BookManager.h"
#import "Book.h"

@implementation BookManager

- (id)init {
    self = [super init];
    if (self) {
        bookList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addBook:(Book *)bookObject{
    [bookList addObject:bookObject];
}

-(NSString *)showAllBook {
    NSMutableString * strTemp = [[NSMutableString alloc]init];
    for (Book *bookTemp in bookList) {
        [strTemp appendString:@"Name : "];
        [strTemp appendString:bookTemp.name];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Genre : "];
        [strTemp appendString:bookTemp.genre];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Author : "];
        [strTemp appendString:bookTemp.author];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"----------------------"];
        [strTemp appendString:@"\n"];
    }
    return strTemp;
}

-(NSInteger)countBook {
    return [bookList count];
}

-(NSString *)findBook:(NSString *)name {
    NSMutableString * strTemp = [[NSMutableString alloc]init];
    for (Book *bookTemp in bookList) {
        if ([bookTemp.name isEqualToString:name]) {
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Name : "];
            [strTemp appendString:bookTemp.name];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Genre : "];
            [strTemp appendString:bookTemp.genre];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Author : "];
            [strTemp appendString:bookTemp.author];
            [strTemp appendString:@"\n"];
            return strTemp;
        }
    }
    return  nil;
}

- (NSString *)removeBook:(NSString *)name {
    for (Book *bookTemp in bookList) {
        if ([bookTemp.name isEqualToString:name]) {
            [bookList removeObject:bookTemp];
            return name;
        }
    }
    return nil;
}


@end
