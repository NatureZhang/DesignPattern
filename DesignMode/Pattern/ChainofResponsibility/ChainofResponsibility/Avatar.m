//
//  Avatar.m
//  ChainofResponsibility
//
//  Created by zhangdong on 15/9/10.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "Avatar.h"

@implementation Avatar
- (void)handleAttack:(Attack *)attack
{
    //当攻击到这里时，我就被攻击中了
    // 实际损伤的点数，取决于攻击的类型
    NSLog(@"Oh! I'm hit with a %@!", [attack class]);
}
@end
