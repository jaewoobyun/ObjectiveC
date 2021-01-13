//
//  BookManager.h
//  BookManager
//
//  Created by JaewooByun on 2021/01/12.
//

#import <Foundation/Foundation.h>
//#import "Book.h"

NS_ASSUME_NONNULL_BEGIN


@class Book; //순환참조 오류 해결??
@interface BookManager : NSObject{
    NSMutableArray *bookList;
    
}

-(void)addBook:(Book *)bookObject;
-(NSString *)showAllBook;
-(NSInteger)countBook;
-(NSString *)findBook:(NSString *)name;
-(NSString *)removeBook:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
