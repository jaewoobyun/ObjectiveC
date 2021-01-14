//
//  ViewController.h
//  Weather
//
//  Created by JaewooByun on 2021/01/14.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, NSXMLParserDelegate>{
    NSXMLParser *parser;
    NSMutableArray *datalist;
    NSMutableDictionary *detailData;
    
    NSString *elementTemp;
    
    BOOL blank;
}


@end

