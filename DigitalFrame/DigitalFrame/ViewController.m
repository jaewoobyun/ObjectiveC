//
//  ViewController.m
//  DigitalFrame
//
//  Created by JaewooByun on 2021/01/13.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageView, label, slider, button;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *cuteImages = [[NSArray alloc]initWithObjects:
                           [UIImage imageNamed:@"1.jpg"],
                           [UIImage imageNamed:@"2.jpg"],
                           [UIImage imageNamed:@"3.jpg"],
                           [UIImage imageNamed:@"4.jpg"],
                           [UIImage imageNamed:@"5.jpg"],
                           [UIImage imageNamed:@"6.jpg"],
                           [UIImage imageNamed:@"7.jpg"],
                           [UIImage imageNamed:@"8.jpg"],
                           [UIImage imageNamed:@"9.jpg"],
                           [UIImage imageNamed:@"10.jpg"],
                           [UIImage imageNamed:@"11.jpg"],
                           [UIImage imageNamed:@"12.jpg"],
                           [UIImage imageNamed:@"13.jpg"],
                           [UIImage imageNamed:@"14.jpg"],
                           [UIImage imageNamed:@"15.jpg"],
                           nil];
    
    imageView.animationImages = cuteImages;
    imageView.animationDuration = 15;
//    [imageView startAnimating];
    
    
    
}

-(IBAction)buttonAction:(id)sender {
    if ([imageView isAnimating]) {
        [imageView stopAnimating];
        [button setTitle:@"Start" forState: UIControlStateNormal];
    } else {
        imageView.animationDuration = slider.value;
        [imageView startAnimating];
        [button setTitle:@"Stop" forState:UIControlStateNormal];
    }
}

-(IBAction)sliderAction:(id)sender {
    imageView.animationDuration = 15-slider.value;
    [imageView startAnimating];
    
    NSString *str = [[NSString alloc]initWithFormat:@"%.2f",slider.value];
    
    label.text = str;
}

@end
