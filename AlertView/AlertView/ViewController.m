//
//  ViewController.m
//  AlertView
//
//  Created by Snow on 2019/06/28.
//  Copyright © 2019 Snow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)pushBtn:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"The carrot cake is a lie." preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertController *okBtn = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Did press OK");
    }];
    
    UIAlertAction *cancelBtn = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Did press Cancel");
    }];
    
    [alert addAction:okBtn];
    [alert addAction:cancelBtn];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
