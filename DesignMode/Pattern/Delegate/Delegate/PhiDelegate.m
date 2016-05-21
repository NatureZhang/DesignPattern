//
//  PhiDelegate.m
//  Delegate
//
//  Created by zhangdong on 15/6/5.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "PhiDelegate.h"

@implementation PhiDelegate
- (void)dealloc
{
    NSLog(@"PhiDelegate 销毁");
}

-(void)sleep
{
    NSLog(@"sleep----------");
}

-(void)eat
{
    NSLog(@"eat----------");
}

-(void)work
{
    NSLog(@"work----------");
}
@end
