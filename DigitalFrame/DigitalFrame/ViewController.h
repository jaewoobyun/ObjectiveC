//
//  ViewController.h
//  DigitalFrame
//
//  Created by JaewooByun on 2021/01/13.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int i;
}

@property (nonatomic, strong) IBOutlet UIImageView *imageView;

@property (nonatomic, strong) IBOutlet UIButton *button;

@property (nonatomic, strong) IBOutlet UISlider *slider;

@property (nonatomic, strong) IBOutlet UILabel *label;


-(IBAction)buttonAction:(id)sender;
-(IBAction)sliderAction:(id)sender;


@end

