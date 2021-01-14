//
//  ViewController.m
//  Weather
//
//  Created by JaewooByun on 2021/01/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // initialize
    datalist = [[NSMutableArray alloc]init];
    detailData = [[NSMutableDictionary alloc]init];
    
    // for XML Parsing
    parser = [[NSXMLParser alloc]initWithContentsOfURL: [NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"]];
    parser.delegate = self;
    [parser parse];
    
//    NSLog(@"%@", datalist);
    
    // for JSON Serializing
    
    jsonData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.json"]];
    NSError *err;
    dataListDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingFragmentsAllowed error:&err];
    
//    NSLog(@"%@", dataListDictionary);
    
    local = [[dataListDictionary objectForKey:@"weatherinfo"]objectForKey:@"local"];
    NSLog(@"%@", local);
    
    
    // Original mock data
    
//    NSDictionary * dic1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국", @"지역", @"맑음", @"날씨", nil];
//    NSDictionary * dic2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"일본", @"지역", @"우박", @"날씨", nil];
//    NSDictionary * dic3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"중국", @"지역", @"눈", @"날씨", nil];
//    NSDictionary * dic4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스페인", @"지역", @"맑음", @"날씨", nil];
//    NSDictionary * dic5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"미국", @"지역", @"비", @"날씨", nil];
//    NSDictionary * dic6 = [[NSDictionary alloc]initWithObjectsAndKeys:@"영국", @"지역", @"흐림", @"날씨", nil];
//    NSDictionary * dic7 = [[NSDictionary alloc]initWithObjectsAndKeys:@"프랑스", @"지역", @"흐림", @"날씨", nil];
//    NSDictionary * dic8 = [[NSDictionary alloc]initWithObjectsAndKeys:@"브라질", @"지역", @"맑음", @"날씨", nil];
//    NSDictionary * dic9 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스위스", @"지역", @"비", @"날씨", nil];
//    NSDictionary * dic10 = [[NSDictionary alloc]initWithObjectsAndKeys:@"덴마크", @"지역", @"우박", @"날씨", nil];
//    NSDictionary * dic11 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스웨덴", @"지역", @"맑음", @"날씨", nil];
//    NSDictionary * dic12 = [[NSDictionary alloc]initWithObjectsAndKeys:@"네덜란드", @"지역", @"비", @"날씨", nil];
//    NSDictionary * dic13 = [[NSDictionary alloc]initWithObjectsAndKeys:@"크로아티아", @"지역", @"비", @"날씨", nil];
//    NSDictionary * dic14 = [[NSDictionary alloc]initWithObjectsAndKeys:@"핀란드", @"지역", @"맑음", @"날씨", nil];
//    NSDictionary * dic15 = [[NSDictionary alloc]initWithObjectsAndKeys:@"헝가리", @"지역", @"비", @"날씨", nil];
//    NSDictionary * dic16 = [[NSDictionary alloc]initWithObjectsAndKeys:@"이탈리아", @"지역", @"눈", @"날씨", nil];
//
//    datalist = [[NSArray alloc]initWithObjects:dic1, dic2, dic3, dic4, dic5, dic6, dic7, dic8, dic9, dic10, dic11, dic12, dic13, dic14, dic15, dic16, nil];
    
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
//    NSLog(@"didStartElement: %@", elementName);
    
    if ([elementName isEqualToString:@"local"]) {
        detailData = [[NSMutableDictionary alloc]init];
    }
    
    elementTemp = elementName;
    blank = YES;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    if (blank == YES && ![elementTemp isEqualToString: @"local"]) {
//        NSLog(@"foundCharacters: %@", string);
        [detailData setObject:string forKey:elementTemp];
    }
    
    
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
    if ([elementName isEqualToString:@"local"]) {
        [datalist addObject:detailData];
    }
    
//    NSLog(@"didEndElement: %@", qName);
    blank = NO;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    /// XML Parsed Data
//    return datalist.count;
    
    /// JSON Parsed Data
    return local.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    /// Original Mock data
//    NSDictionary *dicTemp = [datalist objectAtIndex:indexPath.row];
//    cell.textLabel.text = [dicTemp objectForKey:@"지역"];
//    NSString *weatherStr = [dicTemp objectForKey:@"날씨"];
    
    
    /// XML Parsed Data
//    NSDictionary *dicTemp = [datalist objectAtIndex:indexPath.row];
    
        /// JSON Parsed Data
    NSDictionary *dicTemp = [local objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [dicTemp objectForKey:@"country"];
    NSString *weatherStr = [dicTemp objectForKey:@"weather"];
    NSString *temperatureStr = [dicTemp objectForKey:@"temperature"];

    cell.detailTextLabel.text = [weatherStr stringByAppendingString:temperatureStr];
    
   
    
    if ([weatherStr isEqualToString:@"맑음"]) {
        cell.imageView.image = [UIImage imageNamed:@"sunny.png"];
    }
    else if ([weatherStr isEqualToString:@"비"]) {
        cell.imageView.image = [UIImage imageNamed:@"rainy.png"];
    }
    else if ([weatherStr isEqualToString:@"눈"]) {
        cell.imageView.image = [UIImage imageNamed:@"snow.png"];
    }
    else if ([weatherStr isEqualToString:@"흐림"]) {
        cell.imageView.image = [UIImage imageNamed:@"cloudy.png"];
    }
    else {
        cell.imageView.image = [UIImage imageNamed:@"blizzard.png"];
    }
    
    return cell;
}


@end
