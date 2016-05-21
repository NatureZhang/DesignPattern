//
//  CarBuilder.m
//  Builder
//
//  Created by zhangdong on 15/7/17.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "CarBuilder.h"

@implementation CarBuilder
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.vehicle.type = @"Car";
    }
    return self;
}

- (void)buildFrame
{
    [self.vehicle.partsDic setValue:@"Car Frame" forKey:VehicleFrameKey];
}

- (void)buildEngine
{
    [self.vehicle.partsDic setValue:@"Car Engine" forKey:VehicleEngineKey];
}

- (void)buildWheels
{
    [self.vehicle.partsDic setValue:@"Car Wheels" forKey:VehicleWheelsKey];
}

- (void)buildDoors
{
    [self.vehicle.partsDic setValue:@"Car Doors" forKey:VehicleDoorsKey];
}

@end
