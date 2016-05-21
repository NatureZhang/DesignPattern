//
//  MotorCycleBuilder.m
//  Builder
//
//  Created by zhangdong on 15/7/17.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "MotorCycleBuilder.h"
#import "Vehicle.h"
@implementation MotorCycleBuilder

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.vehicle.type = @"MotorCycle";
    }
    return self;
}

- (void)buildFrame
{
    [self.vehicle.partsDic setValue:@"MotorCyle Frame" forKey:VehicleFrameKey];
}

- (void)buildEngine
{
    [self.vehicle.partsDic setValue:@"MotorCyle Engine" forKey:VehicleEngineKey];
}

- (void)buildWheels
{
    [self.vehicle.partsDic setValue:@"MotorCyle Wheels" forKey:VehicleWheelsKey];
}

- (void)buildDoors
{
    [self.vehicle.partsDic setValue:@"MotorCyle Doors" forKey:VehicleDoorsKey];
}
@end
