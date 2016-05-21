//
//  CharacterBuilder.h
//  Builder_2
//
//  Created by zhangdong on 15/7/20.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
@interface CharacterBuilder : NSObject

/**
 *  通过 characterBuilder 创建有意义的角色
 */
@property (nonatomic, readonly) Character *character;

- (CharacterBuilder *)buildNewCharacter;
- (CharacterBuilder *)buildStrength:(float)value;
- (CharacterBuilder *)buildStamina:(float)value;
- (CharacterBuilder *)buildIntelligence:(float)value;
- (CharacterBuilder *)buildAgility:(float)value;
- (CharacterBuilder *)buildAggressiveness:(float)value;

@end
