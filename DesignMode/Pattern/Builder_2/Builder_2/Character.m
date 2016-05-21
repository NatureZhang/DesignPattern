//
//  Character.m
//  Builder_2
//
//  Created by zhangdong on 15/7/20.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "Character.h"

@implementation Character

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.protection = 1.0;
        self.power = 1.0;
        self.strength = 1.0;
        self.stamina = 1.0;
        self.intelligence = 1.0;
        self.agility = 1.0;
        self.aggressiveness = 1.0;
        
    }
    return self;
}

- (void)play
{
    NSLog(@"Protection: %f", self.protection);
    NSLog(@"Power: %f", self.power);
    NSLog(@"Strength: %f", self.strength);
    NSLog(@"Stamina: %f", self.stamina);
    NSLog(@"Intelligence: %f", self.intelligence);
    NSLog(@"Agility: %f", self.agility);
    NSLog(@"Aggressiveness: %f", self.aggressiveness);
}

@end
