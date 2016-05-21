//
//  NimoComponentUpgrade.m
//  Visitor
//
//  Created by zhangdong on 15/8/26.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "NimoComponentUpgrade.h"

@implementation NimoComponentUpgrade
- (void)visitEngine:(NimoEngine *)engine
{
    NSLog(@"我是升级人员，正在对引擎<%@>进行升级", engine);
}

- (void)visitWheel:(NimoWheel *)wheel
{
    NSLog(@"我是升级人员，正在对车轮<%@>进行升级", wheel);
}
@end
