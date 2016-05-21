//
//  VehicleBuilder.h
//  Builder
//
//  Created by zhangdong on 15/7/17.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Vehicle.h"
@interface VehicleBuilder : NSObject

@property (nonatomic, strong) Vehicle *vehicle;

- (void)buildFrame;
- (void)buildEngine;
- (void)buildWheels;
- (void)buildDoors;

@end
