//
//  CharacterBuilder.m
//  Builder_2
//
//  Created by zhangdong on 15/7/20.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "CharacterBuilder.h"

@implementation CharacterBuilder

- (CharacterBuilder *)buildNewCharacter
{
    _character = [[Character alloc] init];
    return self;
}

- (CharacterBuilder *)buildStrength:(float)value
{
    _character.strength = value;
    return self;
}

- (CharacterBuilder *)buildStamina:(float)value
{
    _character.stamina = value;
    return self;
}

- (CharacterBuilder *)buildIntelligence:(float)value
{
    _character.intelligence = value;
    return self;
}

- (CharacterBuilder *)buildAgility:(float)value
{
    _character.agility = value;
    return self;
}

- (CharacterBuilder *)buildAggressiveness:(float)value
{
    _character.aggressiveness = value;
    return self;
}

@end
