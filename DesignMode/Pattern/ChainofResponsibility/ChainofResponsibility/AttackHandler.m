//
//  AttackHandler.m
//  ChainofResponsibility
//
//  Created by zhangdong on 15/9/10.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler

- (void)handleAttack:(Attack *)attack
{
    [_nextAttackHandler handleAttack:attack];
}
@end
