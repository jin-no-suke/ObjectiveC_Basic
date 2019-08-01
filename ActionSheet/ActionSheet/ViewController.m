//
//  ViewController.m
//  ActionSheet
//
//  Created by Snow on 2019/07/17.
//  Copyright © 2019 Snow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)pushBtn:(id)sender {
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"Action Sheet" message:@"Tap webpage" preferredStyle:UIAlertControllerStyleActionSheet];
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Facebook" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self dismissViewControllerAnimated:YES completion:^{
        }];
        NSLog(@"Did tap Facebook.");
    }]];
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Twitter" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self dismissViewControllerAnimated:YES completion:^{
        }];
        NSLog(@"Did tap Twitter.");
    }]];
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Line" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self dismissViewControllerAnimated:YES completion:^{
        }];
        NSLog(@"Did tap Line.");
    }]];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        [self dismissViewControllerAnimated:YES completion:^{
        }];
        NSLog(@"Did tap Cancel.");
    }]];
    
    [self presentViewController:actionSheet animated:YES completion:nil];
}

@end
