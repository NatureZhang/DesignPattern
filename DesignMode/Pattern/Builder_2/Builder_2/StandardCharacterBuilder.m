//
//  StandardCharacterBuilder.m
//  Builder_2
//
//  Created by zhangdong on 15/7/20.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "StandardCharacterBuilder.h"

@implementation StandardCharacterBuilder
- (CharacterBuilder *)buildStrength:(float)value
{
    self.character.protection = value;
    self.character.power = value;
    return [super buildStrength:value];
}

- (CharacterBuilder *)buildStamina:(float)value
{
    self.character.protection = value;
    self.character.power = value;
    return [super buildStamina:value];
}

- (CharacterBuilder *)buildIntelligence:(float)value
{
    self.character.protection = value;
    self.character.power /= value;

    return [super buildIntelligence:value];
}

- (CharacterBuilder *)buildAgility:(float)value
{
    self.character.protection = value;
    self.character.power /= value;
    return [super buildAgility:value];
}

- (CharacterBuilder *)buildAggressiveness:(float)value
{
    self.character.protection /= value;
    self.character.power *= value;
    return [super buildAggressiveness:value];
}
@end
