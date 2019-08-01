//
//  ViewController.m
//  UITextField
//
//  Created by Snow on 2019/07/16.
//  Copyright © 2019 Snow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.inputTextField.delegate = self;
}

-(void)viewDidAppear:(BOOL)animated {
    [self.inputTextField becomeFirstResponder];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if(textField == self.inputTextField){
        if (textField.text.length < 30 || string.length == 0){
            return YES;
        }
        else{
            return NO;
        }
    }
    return YES;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.inputTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.inputTextField resignFirstResponder];
    return NO;
}


@end
