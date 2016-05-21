//
//  ImageShadowFilter.m
//  Decorator
//
//  Created by zhangdong on 15/9/9.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "ImageShadowFilter.h"

@implementation ImageShadowFilter
- (void)apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 设置阴影效果
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20.0);
}
@end
