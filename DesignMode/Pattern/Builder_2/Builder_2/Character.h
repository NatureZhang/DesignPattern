//
//  Character.h
//  Builder_2
//
//  Created by zhangdong on 15/7/20.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  定义所有类型角色共有的一套特征，包括：防御，攻击，力量，耐力，智力，敏捷和攻击力
 *  Character 不知道如何吧自己构建成有意义的角色
 */
@interface Character : NSObject

@property (nonatomic, assign) float protection;     // 防御
@property (nonatomic, assign) float power;          // 攻击
@property (nonatomic, assign) float strength;       // 力量
@property (nonatomic, assign) float stamina;        // 耐力
@property (nonatomic, assign) float intelligence;   // 智力
@property (nonatomic, assign) float agility;        // 敏捷
@property (nonatomic, assign) float aggressiveness; // 攻击力

- (void)play;
@end
