//
//  MetalArmor.m
//  ChainofResponsibility
//
//  Created by zhangdong on 15/9/10.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "MetalArmor.h"
#import "SwordAttack.h"
@implementation MetalArmor
- (void)handleAttack:(Attack *)attack
{
    if ([attack isKindOfClass:[SwordAttack class]]) {
        //
        NSLog(@"No damage from a sword attack");
    }
    else
    {
        NSLog(@"%@ don't know this attack: %@", [self class], [attack class]);
//        [self.nextAttackHandler handleAttack:attack];
        [super handleAttack:attack];
    }
}
@end
