//
//  ViewController.h
//  imageDownload
//
//  Created by JaewooByun on 2021/01/14.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLSessionDownloadDelegate> {
    NSURLSessionTask *downloadTask;
    
    
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;

@property (weak, nonatomic) IBOutlet UIProgressView *downloadProgressView;


- (IBAction)downloadAction:(UIButton *)sender;

- (IBAction)suspendAction:(UIButton *)sender;

- (IBAction)resumeAction:(UIButton *)sender;

- (IBAction)cancelAction:(UIButton *)sender;

@end

