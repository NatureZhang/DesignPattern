//
//  CarDriver.h
//  Guise
//
//  Created by zhangdong on 15/7/24.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  汽车驾驶员
 *  提供统一的对外接口
 */
@interface CarDriver : NSObject


- (void)driveToLocation:(CGPoint)x;
@end
