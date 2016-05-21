//
//  Car.m
//  Guise
//
//  Created by zhangdong on 15/7/24.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "Car.h"

@implementation Car

// 松刹车
- (void)releaseBrakes
{
    NSLog(@"-----松刹车------");
}

// 换挡
- (void)changeGears
{
    NSLog(@"------换挡-------");
}

// 踩油门
- (void)pressAccelerator
{
    NSLog(@"------踩油门------");
}

// 踩刹车
- (void)pressBreakes
{
    NSLog(@"------踩刹车------");
}

// 松油门
- (void)releaseAccelerator
{
    NSLog(@"------松油门------");
}

@end
