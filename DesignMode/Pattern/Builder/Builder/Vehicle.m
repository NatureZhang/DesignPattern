//
//  Vehicle.m
//  Builder
//
//  Created by zhangdong on 15/7/17.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.partsDic = [NSMutableDictionary dictionaryWithCapacity:1];
    }
    return self;
}

- (void)show
{
    NSLog(@"-------------------------");
    NSLog(@"Vihicle Type:%@", _type);
    NSLog(@"Frame: %@", _partsDic[VehicleFrameKey]);
    NSLog(@"Engine: %@", _partsDic[VehicleEngineKey]);
    NSLog(@"Wheels: %@", _partsDic[VehicleWheelsKey]);
    NSLog(@"Doors: %@", _partsDic[VehicleDoorsKey]);
}

@end
