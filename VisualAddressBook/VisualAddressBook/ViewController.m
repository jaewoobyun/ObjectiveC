//
//  ViewController.m
//  VisualAddressBook
//
//  Created by JaewooByun on 2021/01/13.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView, nameTextField, genreTextField, authorTextField, countLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Book
    Book *book1 = [[Book alloc]init];
    book1.name = @"햄릿";
    book1.genre = @"비극";
    book1.author = @"셰익스피어";
    
    Book *book2 = [[Book alloc]init];
    book2.name = @"햄릿2";
    book2.genre = @"비극2";
    book2.author = @"셰익스피어2";
    
    Book *book3 = [[Book alloc]init];
    book3.name = @"햄릿3";
    book3.genre = @"비극3";
    book3.author = @"셰익스피어3";
    
    //BookManager
    myBook = [[BookManager alloc]init];
    
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
    
    countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
    
}

-(IBAction)showAllBookAction:(id)sender{
//    NSLog(@"showAllBookAction");
    NSLog(@"%@", [myBook showAllBook]);
    
    resultTextView.text = [myBook showAllBook];
}

-(IBAction)addBookAction:(id)sender {
    Book *bookTemp = [[Book alloc]init];
    
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [myBook addBook:bookTemp];
    resultTextView.text = @"책이 추가 됐습니다.";
    countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
    
}

-(IBAction)searchBookAction:(id)sender{
    NSString *strTemp = [myBook findBook:nameTextField.text];
    
    if (strTemp != nil) {
        resultTextView.text = strTemp;
    } else {
        resultTextView.text = @"찾으시는 책이 없네요.";
    }
    
}

-(IBAction)removeBookAction:(id)sender{
    NSString *strTemp = [myBook removeBook:nameTextField.text];
    
    if (strTemp != nil) {
        NSMutableString *str = [[NSMutableString alloc]init];
        [str appendString:strTemp];
        [str appendString:@"책이 지워졌습니다"];
        resultTextView.text = str;
        countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
    } else {
        resultTextView.text = @"찾으시는 책이 없네요.";
    }
}

@end
