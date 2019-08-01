//
//  ViewController.h
//  UIImageView
//
//  Created by Snow on 2019/07/17.
//  Copyright © 2019 Snow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
-(UIImage *)makeRoundedCorners:(UIImage *)image radius:(float)radius;

@end

