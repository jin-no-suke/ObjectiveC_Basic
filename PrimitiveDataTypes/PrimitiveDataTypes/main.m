//
//  main.m
//  PrimitiveDataTypes
//
//  Created by STV-M016 on 2019/07/10.
//  Copyright © 2019 STV-M016. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    BOOL isBlue = YES;
    if (isBlue) {
        NSLog(@"The sky is blue.");
    }
    
    NSString* wabbit = @"Bugs Bunny";
    NSLog(@"What's up, doc? -%@", wabbit);
    
    NSInteger daffyDuck = 584;
    NSLog(@"%ld",  daffyDuck);
    
    NSNumber *porkyPig = [NSNumber numberWithFloat:38.9026];
    NSLog(@"%f", [porkyPig floatValue]);
    
    
    return 0;
}
