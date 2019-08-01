//
//  main.m
//  Loops
//
//  Created by STV-M016 on 2019/07/10.
//  Copyright © 2019 STV-M016. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    BOOL ifStatement;
    if ((ifStatement = YES)) {
        NSString *fakeGiraffes = @"Horned horses are weird but tall-long leopard-horses are not?";
        NSLog(@"%@", fakeGiraffes);
    }
    
    BOOL ifElseStatement;
    if ((ifElseStatement = YES)) {
        NSString *fakeBirds = @"Birds are spying on us!";
        NSLog(@"%@", fakeBirds);
    } else {
        NSString *realBirds = @"You've been brainwashed by the government!";
        NSLog(@"%@", realBirds);
    }
    
    int ifElseIfStatement;
    int attack = 301;
    if (attack < 301) {
        NSString *pikachu = @"Pikachu's electrifies itself.";
        NSLog(@"%@", pikachu);
    } else if (attack > 301) {
        NSString *charmander = @"Charmander burns down the castle.";
        NSLog(@"%@", charmander);
    } else {
        NSString *squirtle = @"Squirtle's attack is effective.";
        NSLog(@"%@", squirtle);
    }
    
    int switchStatement;
    int cake = 5;
    switch(cake){
        case 0:
            NSLog(@"Carrot Cake");
            break;
        case 1:
            NSLog(@"Strawberry Shortcake");
            break;
        case 2:
            NSLog(@"Pandan Chiffon Cake");
            break;
        case 3:
            NSLog(@"Paper Wrapped Cake");
            break;
        case 4:
            NSLog(@"Plum Upside-Down Cake");
            break;
        case 5:
            NSLog(@"New York Cheesecake");
            break;
        case 6:
            NSLog(@"Chocolate Marquis");
            break;
        default:
            NSLog(@"Brownies are not cakes!");
            break;
    }
    
    int forStatement;
    int i = 2;
    for (i=1; i<4; i++) {
        NSLog(@"%d", i);
    }
    
    BOOL psychosis;
    NSString *thatFirstWeirdJpThing = ((psychosis = YES)) ? @"Zombie is alive" : @"Zombie is dead";
    NSLog(@"%@", thatFirstWeirdJpThing);
    
    
    BOOL thatSecondWeirdJpThing;
    NSArray *array = [NSArray arrayWithObjects:@"apple",@"orange",@"grape",@"banana",@"mango",nil];
    for (NSString *fruit in array) {
        NSLog(@"%@", fruit);
    }
    
    return 0;
}
