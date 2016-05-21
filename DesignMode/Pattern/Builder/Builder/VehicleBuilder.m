//
//  VehicleBuilder.m
//  Builder
//
//  Created by zhangdong on 15/7/17.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "VehicleBuilder.h"

@implementation VehicleBuilder
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.vehicle = [[Vehicle alloc] init];
    }
    return self;
}

- (void)buildFrame
{
    
}

- (void)buildEngine
{
    
}

- (void)buildWheels
{
    
}

- (void)buildDoors
{
    
}
@end
