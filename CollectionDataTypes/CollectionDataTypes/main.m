//
//  main.m
//  CollectionDataTypes
//
//  Created by STV-M016 on 2019/07/10.
//  Copyright © 2019 STV-M016. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSArray *looneyTunes = [NSArray arrayWithObjects: @"Taz",@"Daffy",@"Lola",nil];
    NSLog(@"%@", looneyTunes);
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjects:@[@"Meow",@"Woofer",@"CobraChicken"] forKeys:@[@"Bottlebrush",@"Floof",@"Danger"]];
    NSLog(@"%@",dict);
    
    return 0;
}
