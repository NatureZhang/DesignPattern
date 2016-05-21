//
//  Shop.h
//  Builder
//
//  Created by zhangdong on 15/7/17.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "VehicleBuilder.h"
#import "Vehicle.h"

@interface Shop : NSObject

- (Vehicle *)construct:(VehicleBuilder *)vehicleBuilder;

@end
