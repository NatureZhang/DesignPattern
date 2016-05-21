//
//  CrystalShield.m
//  ChainofResponsibility
//
//  Created by zhangdong on 15/9/10.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "CrystalShield.h"
#import "MagicFireAttack.h"
@implementation CrystalShield
- (void)handleAttack:(Attack *)attack
{
    if ([attack isKindOfClass:[MagicFireAttack class]]) {
        NSLog(@"No damage from a magic fire attack");
    }
    else
    {
        NSLog(@"%@ don't know this attack: %@", [self class], [attack class]);
        [super handleAttack:attack];
    }
}
@end
