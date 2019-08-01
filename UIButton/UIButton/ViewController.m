//
//  ViewController.m
//  UIButton
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
}


- (IBAction)changeBackground:(id)sender {
    NSInteger randomNumber = arc4random_uniform(5);
    UIImage *randomImage;
    
    switch(randomNumber) {
        case 0:
            randomImage = [UIImage imageNamed:@"boss.jpg"];
            break;
        case 1:
            randomImage = [UIImage imageNamed:@"floof.jpg"];
            break;
        case 2:
            randomImage = [UIImage imageNamed:@"smile.jpg"];
            break;
        case 3:
            randomImage = [UIImage imageNamed:@"swim.jpg"];
            break;
        case 4:
            randomImage = [UIImage imageNamed:@"stare.jpg"];
            break;
        default:
            break;
    }
    
    [_background setImage:randomImage];

    
//    UIButton *background;
//    [background setBackgroundImage:randomImage forState:UIControlStateNormal];
    // mistake 1: made an instance to create a new button, and set up the images to be background of that button
    // mistake 2: not background image.
}
@end
