//
//  ViewController.m
//  UIImageView
//
//  Created by Snow on 2019/07/17.
//  Copyright © 2019 Snow. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageView.contentMode =  UIViewContentModeScaleAspectFit;
    _imageView.clipsToBounds=YES;
    _imageView.layer.cornerRadius=15.0f;
    UIImage *waterDog = [UIImage imageNamed:@"water dog.jpg"];
    _imageView.image = waterDog;
}

-(UIImage *)makeRoundedCorners:(UIImage *)image radius:(float)radius {
    
    CALayer *imageLayer = [CALayer layer];
    imageLayer.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    imageLayer.contents = (id) image.CGImage;
    
    imageLayer.masksToBounds = YES;
    imageLayer.cornerRadius = 5.0f;
    
    UIGraphicsBeginImageContext(image.size);
    [imageLayer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *roundedCorners = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return roundedCorners;
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
