//
//  ScooterBuilder.m
//  Builder
//
//  Created by zhangdong on 15/7/17.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "ScooterBuilder.h"

@implementation ScooterBuilder
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.vehicle.type = @"Scooter";
    }
    return self;
}

- (void)buildFrame
{
    [self.vehicle.partsDic setValue:@"Scooter Frame" forKey:VehicleFrameKey];
}

- (void)buildEngine
{
    [self.vehicle.partsDic setValue:@"Scooter Engine" forKey:VehicleEngineKey];
}

- (void)buildWheels
{
    [self.vehicle.partsDic setValue:@"Scooter Wheels" forKey:VehicleWheelsKey];
}

- (void)buildDoors
{
    [self.vehicle.partsDic setValue:@"Scooter Doors" forKey:VehicleDoorsKey];
}

@end
