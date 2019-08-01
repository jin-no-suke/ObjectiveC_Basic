//
//  main.m
//  ClassPropertyMethod
//
//  Created by Snow on 2019/07/11.
//  Copyright © 2019 Snow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Account.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Account *person = [[Account alloc] initWithName:@"Splat" age:149 sex:@"F" language:@"Obj-C"];
        Account *person2 = [[Account alloc] initWithName:@"Splut" age:186 sex:@"M" language:@"Python"];
        Account *person3 = [[Account alloc] initWithName:@"Sploosh" age:23 sex:@"F" language:@"Java"];
        
        NSArray *personList = @[person, person2, person3];
        
        for(Account *person in personList) {
            [person printPerson];
        }
    }
}
