//
//  Vehicle.h
//  Builder
//
//  Created by zhangdong on 15/7/17.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

#define VehicleFrameKey  @"frame"
#define VehicleEngineKey @"engine"
#define VehicleWheelsKey @"wheels"
#define VehicleDoorsKey  @"doors"

@interface Vehicle : NSObject

@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSDictionary *partsDic;

- (void)show;
@end
