//
//  ChainofResponsibility.m
//  ChainofResponsibility
//
//  Created by zhangdong on 15/9/10.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "ChainofResponsibility.h"
#import "Attack.h"
#import "SwordAttack.h"
#import "MagicFireAttack.h"
#import "LightningAttack.h"

#import "AttackHandler.h"
#import "MetalArmor.h"
#import "CrystalShield.h"
#import "Avatar.h"
@implementation ChainofResponsibility

- (void)demoOfChainofResponsibility
{
    // 创建新的人物
    AttackHandler *avatar = [[Avatar alloc] init];
    
    // 让他穿上金属盔甲
    AttackHandler *metalArmorAvatar = [[MetalArmor alloc] init];
    [metalArmorAvatar setNextAttackHandler:avatar];
    
    // 水晶盾牌
    CrystalShield *superAvatar = [[CrystalShield alloc] init];
    [superAvatar setNextAttackHandler:metalArmorAvatar];
    
    // 其他行动
    
    // 用剑攻击人物
    Attack *swordAttack = [[SwordAttack alloc] init];
    [superAvatar handleAttack:swordAttack];
    
    // 用魔法火焰攻击人物
    Attack *magicFireAttack = [[MagicFireAttack alloc] init];
    [superAvatar handleAttack:magicFireAttack];
    
    // 用闪电攻击人物
    Attack *lightningAttack = [[LightningAttack alloc] init];
    [superAvatar handleAttack:lightningAttack];
    
    // ...进一步行动
}
@end
