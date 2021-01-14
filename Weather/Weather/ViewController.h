//
//  ViewController.h
//  Weather
//
//  Created by JaewooByun on 2021/01/14.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, NSXMLParserDelegate>{
    
    
    // XML Parser
    NSXMLParser *parser;
    NSString *elementTemp;
    
    NSMutableArray *datalist;
    NSMutableDictionary *detailData;
    
    BOOL blank;
    
    
    // JSON Parser
    NSData *jsonData;
    NSDictionary *dataListDictionary;
    NSArray *local;
    
}


@end

