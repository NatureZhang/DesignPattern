//
//  CarDriver.m
//  Guise
//
//  Created by zhangdong on 15/7/24.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "CarDriver.h"
#import "Taximeter.h"
#import "Car.h"

@implementation CarDriver
- (void)driveToLocation:(CGPoint)x
{
    // 。。。。。
    
    // 启动计价器
    Taximeter *meter = [[Taximeter alloc] init];
    [meter start];
    
    // 操作车辆，直到抵达位置X
    Car *car = [[Car alloc] init];
    [car releaseBrakes];
    [car changeGears];
    [car pressAccelerator];
    
    // .....
    
    // 当到达了位置X，就停下车和计价器
    [car releaseAccelerator];
    [car pressBreakes];
    [meter stop];
    
    
    // 。。。。。
}
@end
