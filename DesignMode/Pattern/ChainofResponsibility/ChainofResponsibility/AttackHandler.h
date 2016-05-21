//
//  AttackHandler.h
//  ChainofResponsibility
//
//  Created by zhangdong on 15/9/10.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"
/**
 *  攻击防御管理
 */
@interface AttackHandler : NSObject

@property (nonatomic, strong) AttackHandler *nextAttackHandler;

/**
 *  如果子类没有重载这个方法，默认的handleAttack:实现就会被调用，这个方法只是把攻击传给 nextAttackHandler_处理
 *
 *  @param attack 攻击
 */
- (void)handleAttack:(Attack *)attack;

@end
