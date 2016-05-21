//
//  Shop.m
//  Builder
//
//  Created by zhangdong on 15/7/17.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "Shop.h"

@implementation Shop

- (Vehicle *)construct:(VehicleBuilder *)vehicleBuilder;
{
    [vehicleBuilder buildFrame];
    
    [vehicleBuilder buildEngine];
    
    [vehicleBuilder buildWheels];
    
    [vehicleBuilder buildDoors];
    
    return [vehicleBuilder vehicle];
    
}
@end
