//
//  ViewController.m
//  imageDownload
//
//  Created by JaewooByun on 2021/01/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView, activityIndicatorView, downloadProgressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


//MARK: - NSURL Session Download Delegate
//- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite {
//
//    NSLog(@"totalBytesExpectedToWrite : %lli", totalBytesExpectedToWrite); // 총 받아야될 데이터 패킷 용량
//    NSLog(@"bytesWritten : %lli", bytesWritten); // 저장된 패킷 데이터
//    NSLog(@"totalBytesWritten : %lli", totalBytesWritten); // 누적치
//
//    float progress = (float)totalBytesWritten/(float)totalBytesExpectedToWrite;
//    [downloadProgressView setProgress:progress animated: YES];
//
//
//}
//
//- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location {
//    NSData *data = [NSData dataWithContentsOfURL:location];
//
//    imageView.image = [UIImage imageWithData:data];
//    [activityIndicatorView stopAnimating];
//}


//MARK: - IBActions

- (IBAction)downloadAction:(UIButton *)sender {
    imageView.image = nil;
    [downloadProgressView setProgress:0.0 animated:NO];
    [activityIndicatorView startAnimating];
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    
    
    //MARK: 동기 방식
//    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg"]];
    
    //MARK: 비동기 통신 (Block Coding)
    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg"] completionHandler:^(NSURL *location, NSURLResponse * response, NSError *error){
        self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
        [activityIndicatorView stopAnimating];
    }];
    
    [downloadTask resume];
    
    
}

- (IBAction)suspendAction:(UIButton *)sender {
    [downloadTask suspend];
}

- (IBAction)resumeAction:(UIButton *)sender {
    [downloadTask resume];
}

- (IBAction)cancelAction:(UIButton *)sender {
    [downloadTask cancel];
    [downloadProgressView setProgress:0.0 animated:NO];
    [activityIndicatorView stopAnimating];
}



@end
