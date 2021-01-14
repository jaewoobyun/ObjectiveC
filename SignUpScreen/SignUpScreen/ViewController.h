//
//  ViewController.h
//  SignUpScreen
//
//  Created by JaewooByun on 2021/01/14.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *telTextField;
@property (weak, nonatomic) IBOutlet UITextField *blogTextField;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;


- (IBAction)signUpAction:(UIButton *)sender;




@end

