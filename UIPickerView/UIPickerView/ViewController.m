//
//  ViewController.m
//  UIPickerView
//
//  Created by Snow on 2019/07/17.
//  Copyright © 2019 Snow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *pickerPokemon;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    pickerPokemon = @[@"Squirtle",@"Charmander",@"Ponyta",@"Eevee",@"Lapras"];
    
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return pickerPokemon.count;
}


- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return pickerPokemon[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.labelChoose.text = pickerPokemon[row];
}


@end
