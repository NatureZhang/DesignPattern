//
//  Car.h
//  Guise
//
//  Created by zhangdong on 15/7/24.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

// 松刹车
- (void)releaseBrakes;

// 换挡
- (void)changeGears;

// 踩油门
- (void)pressAccelerator;

// 踩刹车
- (void)pressBreakes;

// 松油门
- (void)releaseAccelerator;

@end
