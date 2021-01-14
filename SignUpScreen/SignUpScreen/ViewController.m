//
//  ViewController.m
//  SignUpScreen
//
//  Created by JaewooByun on 2021/01/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameTextField, idTextField, passwordTextField, telTextField, blogTextField, resultTextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameTextField.delegate = self;
    self.idTextField.delegate = self;
    self.passwordTextField.delegate = self;
    self.telTextField.delegate = self;
    self.blogTextField.delegate = self;
    
    resultTextView.allowsEditingTextAttributes = false;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
//    NSLog(@"textFieldshouldReturn");
//    return YES;
    
    [textField resignFirstResponder];
    return  YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (IBAction)signUpAction:(UIButton *)sender {
    resultTextView.text = [NSString stringWithFormat:@"%@ 님 가입을 축하드립니다."];
    
    
    
    
    
}



@end
